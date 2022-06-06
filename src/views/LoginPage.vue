<template>
   <div class="d-flex flex-column pt-5 background full align-items-center">
      <div class="card p-3 rounded shadow col-11 col-sm-4 bg-light position-relative">
         <div class="text-center">
            <img
               src="../assets/img/logo.png"
               alt="logo"
               class="logoo bg-white rounded-circle p-2 mb-2"
            />
            <h4>
               <b>Login Aplikasi Preview Ijazah</b>
            </h4>
            <h5>SDIT Harapan Umat Jember</h5>
         </div>

         <hr />
         <Transition>
            <div v-if="loginFailed" class="mt-2 alert alert-danger">email atau password salah</div>
         </Transition>

         <form v-on:submit.prevent="login">
            <div class="mb-3">
               <label for="exampleInputEmail1" class="form-label">Email address</label>
               <input
                  type="email"
                  v-model="user.email"
                  class="form-control"
                  id="exampleInputEmail1"
                  aria-describedby="emailHelp"
               />
            </div>
            <!-- <div v-if="validation.email" class="mt-2 alert alert-danger">{{ validation.email[0] }}</div> -->
            <div class="mb-3">
               <label for="exampleInputPassword1" class="form-label">Password</label>
               <input
                  type="password"
                  v-model="user.password"
                  class="form-control"
                  id="exampleInputPassword1"
               />
            </div>
            <!-- <div v-if="validation.password" class="mt-2 alert alert-danger">{{ validation.password[0] }}</div> -->

            <button type="submit" class="btn btn-primary w-100">Login</button>
         </form>
         <small class="text-center mt-3">application version 1.0.0</small>
      </div>
   </div>
</template>

<script>
// import { reactive, ref } from "vue";
// import router from "vue-router";
import axios from "axios";

export default {
   name: "loginPage",
   data() {
      return {
         url: "http://127.0.0.1:8000/api/login",
         user: {
            email: "",
            password: ""
         },
         localSave: {
            token: "",
            isAdmin: ""
         },
         loginFailed: false,
         id: ""
      }
   },
   methods: {
      saveToLocal() {
         localStorage.setItem("localData", JSON.stringify(this.localSave))
      },
      authLogic(results) {
         if (results.isAdmin == true) {
            return this.$router.push({
               name: "AdminPage",
            })
         } else if (results.isAdmin == false) {
            this.id = results.data.student.id
            return this.$router.push({
               name: "IjazahPage",
               params: {
                  id: this.id
               }
            })
         } else {
            this.loginFailed = true;
            setTimeout(() => {
               return this.loginFailed = false;
            }, 2500)
         }
      },
      login() {
         axios.post(`${this.url}`, {
            email: this.user.email,
            password: this.user.password
         }).then((result) => {
            const results = result.data
            this.localSave.token = results.token
            this.localSave.isAdmin = results.isAdmin

            this.saveToLocal()
            this.authLogic(results)
            console.log(results)

         }).catch((err) => {
            console.log(err)
            // this.loginStatus = "failed"
         })
      },

   },
};
</script>
