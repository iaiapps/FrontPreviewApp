<template >
   <router-view v-bind:url="urlapp"></router-view>
</template>

<script>

export default {
   name: 'App',
   data() {
      return {
         urlapp: "http://127.0.0.1:8000/api"
      }
   },
}
</script>