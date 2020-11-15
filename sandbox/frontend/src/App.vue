<template>
  <v-app>
    <v-container class="pa-auto">
      <v-row class="mb-3">
        <v-icon class="mr-3" x-large>mdi-tools</v-icon>
        <h1>Still tinkering!</h1>
      </v-row>
      <v-row>
        <p class="mb-2">
          There's nothing here at the moment, give it some time though and I'm
          sure something will pop up.
        </p>
        <p>
          If you're interested in the source code used to set-up this website,
          I've created a
          <a href="https://github.com/simon-ricketts/django-vue-docker-template"
            >template repo</a
          >
          on GitHub which you can use to build a similar website (Technologies
          used:
          <a href="https://www.djangoproject.com/" target="_blank">Django</a>,
          <a href="https://vuejs.org/" target="_blank">Vue</a>,
          <a href="https://www.docker.com/" target="_blank">Docker</a>,
          <a href="https://www.nginx.com/" target="_blank">nginx</a>)
        </p>
      </v-row>
    </v-container>
  </v-app>
</template>

<script>
export default {
  name: "App",
  components: {},
};
</script>

<style>
.container {
  max-width: 900px !important;
  padding: 200px 50px 0px !important;
}
</style>
