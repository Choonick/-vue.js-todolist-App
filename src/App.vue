<template>
  <div id="app">
    <img src="./assets/logo.png">
    <h1>To do List App</h1>
    <TodoList/>
  </div>
</template>

<script type="text/javascript">

// if (process.env.NODE_ENV === 'production') {
//   const OfflinePluginRuntime = require('offline-plugin/runtime'); // eslint-disable-line global-require
//   OfflinePluginRuntime.install({
//     // Tells to new SW to take control immediately
//     onUpdateReady: () => OfflinePluginRuntime.applyUpdate(),
//     // Tells the UpdateLink component to reload into the new version
//     onUpdated: () => {
//       window.swUpdate = true;
//     },
//   });
// }

import TodoList from './components/TodoList.vue'

export default {
  components: {
    TodoList
  }
}

</script>

<style>
#app {
  font-family: 'Avenir', Helvetica, Arial, sans-serif;
  -webkit-font-smoothing: antialiased;
  -moz-osx-font-smoothing: grayscale;
  text-align: center;
  color: #2c3e50;
  margin-top: 60px;
}
</style>
