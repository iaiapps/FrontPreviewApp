<template>
   <HeaderComp></HeaderComp>
   <div class="container pt-3">
      <div class="row mb-5">
         <MenulistComp></MenulistComp>
         <div class="col-12 col-lg-9">
            <div class="card p-3 mb-3">
               <h4 class="fw-bold">Halaman Nilai</h4>
            </div>
            <div class="card p-3">
               <table class="table">
                  <thead>
                     <tr>
                        <th scope="col">#</th>
                        <th scope="col">Nama</th>
                        <th scope="col">Action</th>
                     </tr>
                  </thead>
                  <tbody>
                     <tr v-for="(student, index) in students" :key="student.id">
                        <th scope="row">{{ index + 1 }}</th>
                        <td>{{ student.name }}</td>
                        <td>
                           <div>
                              <router-link
                                 v-bind:to="{ name: 'NilaiPage', params: { id: student.id } }"
                              >
                                 <button class="btn btn-primary btn-sm">lihat nilai</button>
                              </router-link>
                           </div>
                        </td>
                     </tr>
                  </tbody>
               </table>
            </div>
         </div>
      </div>
   </div>
</template>

<script>
import HeaderComp from '../components/HeaderComp.vue'
import MenulistComp from '../components/MenulistComp.vue'
import axios from 'axios'

export default {
   name: "AdminPage",
   components: {
      HeaderComp,
      MenulistComp
   },
   props: {
      url: String
   },
   data() {
      return {
         // url: "http://127.0.0.1:8000/api/student",
         token: "",
         students: "",
      }
   },
   methods: {
      getLocal() {
         const saveData = JSON.parse(localStorage.getItem("localData"));
         this.token = saveData.token;
         this.isAdmin = saveData.isAdmin;
      },
      showListStudent() {
         axios.get(`${this.url}/student`, {
            headers: {
               "Authorization": `Bearer ${this.token}`,
            }
         }).then((result) => {
            const results = result.data.data;
            this.students = results
            // console.log(results)
         }).catch((err) => {
            console.log(err)
         })
      }
   },
   mounted() {
      this.getLocal();
      this.showListStudent();
   }
}
</script>