FROM node:8-slim AS vue-dev
RUN apt-get update && apt-get install python g++ build-essential -y
RUN npm install webpack webpack-dev-server webpack-cli -g
WORKDIR /usr/src/app
COPY ./sandbox/frontend/package*.json ./
RUN npm ci

FROM python:3.8-slim as django-dev
RUN apt-get update && apt-get install -y gcc
ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1
WORKDIR /sandbox
RUN pip install pipenv
COPY Pipfile* ./
RUN pipenv install --dev --system --ignore-pipfile --deploy
COPY ./sandbox .

FROM vue-dev as vue-compiler
WORKDIR /usr/src/app
COPY sandbox/frontend .
RUN npm run build

FROM django-dev as web
ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1
ARG DJANGO_SECRET_KEY
ENV DJANGO_SECRET_KEY $DJANGO_SECRET_KEY
WORKDIR /sandbox
COPY --from=vue-compiler /usr/src/app/webpack-stats.json ./frontend/webpack-stats.json
COPY --from=vue-compiler /usr/src/app/static ./frontend/static
RUN python manage.py collectstatic --no-input

FROM nginx:1.17.6-alpine
COPY --from=web /sandbox/static_root /var/sandbox/static
COPY ./nginx_static.conf /etc/nginx/conf.d/nginx.conf