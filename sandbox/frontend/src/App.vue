<template>
  <div id="app">
    <img alt="Maintenance logo" height="200" src="static/maintenance.png" />
    <h1>Still tinkering!</h1>
    <div id="text">
      <p>
        There's nothing here at the moment, give it some time though and I'm sure something will pop up.
        <br />
        <br />If you're interested in the source code used to set-up this website, I've created a
        <a
          href="https://github.com/simon-ricketts/django-vue-docker-template"
        >template repo</a> on GitHub which you can use to build a similar website (Technologies used: <a href="https://www.djangoproject.com/" target="_blank">Django</a>, <a href="https://vuejs.org/" target="_blank">Vue</a>, <a href="https://www.docker.com/" target="_blank">Docker</a>, <a href="https://www.nginx.com/" target="_blank">nginx</a>)
      </p>
    </div>
  </div>
</template>

<script>
export default {
  name: "App",
  components: {}
};
</script>

<style>
#app {
  font-family: Avenir, Helvetica, Arial, sans-serif;
  -webkit-font-smoothing: antialiased;
  -moz-osx-font-smoothing: grayscale;
  text-align: center;
  color: #2c3e50;
  margin: 60px 450px;
}
#text {
  text-align: left;
}
</style>
