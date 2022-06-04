<template>
  <div class="container d-flex justify-content-center mt-5">
    <div class="card p-3 rounded shadow col-12 col-sm-6">
      <div class="text-center bg-light p-3">
        <h4><b>Login Aplikasi Preview Ijazah </b></h4>
        <h5>SDIT Harapan Umat Jember</h5>
      </div>
      <hr />
      <form @submit.prevent="login">
        <div class="mb-3">
          <label for="exampleInputEmail1" class="form-label"
            >Email address</label
          >
          <input
            type="email"
            v-model="user.email"
            class="form-control"
            id="exampleInputEmail1"
            aria-describedby="emailHelp"
          />
        </div>
        <div v-if="validation.email" class="mt-2 alert alert-danger">
          {{ validation.email[0] }}
        </div>
        <div class="mb-3">
          <label for="exampleInputPassword1" class="form-label">Password</label>
          <input
            type="password"
            v-model="user.password"
            class="form-control"
            id="exampleInputPassword1"
          />
        </div>
        <div v-if="validation.password" class="mt-2 alert alert-danger">
          {{ validation.password[0] }}
        </div>

        <button type="submit" class="btn btn-primary w-100">Login</button>
      </form>
    </div>
  </div>
</template>

<script>
import { reactive, ref } from "vue";
import { useRouter } from "vue-router";
import axios from "axios";

export default {
  setup() {
    const router = useRouter();
    const user = reactive({
      email: "",
      password: "",
    });
    const validation = ref([]);
    const loginFailed = ref(null);

    function login() {
      let email = user.email;
      let password = user.password;

      axios
        .post("http://localhost:8000/api/login", {
          email,
          password,
        })
        .then((response) => {
          if (response.data.isAdmin == true) {
            localStorage.setItem("token", response.data.token);
            return router.push({
              name: "AdminPage",
            });
          } else if (response.data.isAdmin == false) {
            localStorage.setItem("token", response.data.token);
            return router.push({
              name: "IjazahPage",
            });
          } else {
            loginFailed.value = true;
          }
        })
        .catch((error) => {
          validation.value = error.response.gcmdata;
        });
    }

    return {
      user,
      validation,
      loginFailed,
      login,
    };
  },
};
</script>
