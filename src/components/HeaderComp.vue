<template>
   <nav class="navbar navbar-dark bg-primary">
      <div class="container">
         <ul class="navbar-nav">
            <a class="navbar-brand" href="#">
               <h3 class="m-0">Preview App</h3>
            </a>
         </ul>
         <div>
            <button class="btn btn-light" v-on:click="deleteLocalData">Logout</button>
         </div>
      </div>
   </nav>
</template>

<script>
export default {
   name: 'HeaderComp',
   methods: {
      deleteLocalData() {
         localStorage.clear();
         this.$router.push({
            name: "LoginPage"
         })
      },
   }
}
</script>