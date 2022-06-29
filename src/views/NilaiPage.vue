<template>
   <HeaderComp></HeaderComp>
   <div class="container pt-3">
      <div class="row mb-3">
         <div class="col-12 col-lg-4 mb-3 mb-lg-0 me-auto">
            <div class="card shadow p-3">
               <router-link
                  class="btn btn-primary w-100 mb-3"
                  v-if="isAdmin == true"
                  v-bind:to="{ name: 'AdminNilaiPage' }"
               >kembali ke halaman admin</router-link>
               <h3 class="fw-bold">Preview Nilai Ijazah SDIT Harapan Umat Jember.</h3>
               <h4 class>Tahun Ajaran 2021/2022</h4>

               <p class="mt-3 fs-5">Cek Nilai Ijazah</p>

               <div class="d-flex flex-wrap">
                  <button
                     type="button"
                     class="btn btn-outline-primary w-100"
                     data-bs-toggle="modal"
                     data-bs-target="#ModalNilai"
                  >Edit Nilai Ijazah</button>
               </div>
               <!-- <small class="mt-3 d-block">*scroll/sentuh gambar untuk menggeser</small> -->
               <button class="mt-3 btn btn-outline-primary" v-on:click="print">print</button>
            </div>
         </div>
         <div class="col-12 col-lg-8">
            <div class="card p-3 mb-3 shadow">
               <h4 class>Nama Siswa : {{ students.name }}</h4>
            </div>

            <div id="printarea" class="card p-3 cardijazah shadow">
               <img class="imgijazah" src="../assets/img/nilai.png" alt="ijazah" />
               <p class="textnilai nilainamasiswa">{{ students.name }}</p>
               <p
                  class="textnilai nilaittl"
               >{{ students.place_of_birth }}, {{ students.date_of_birth }}</p>
               <p class="textnilai nilainis">{{ students.nis }}</p>
               <p class="textnilai nilainisn">{{ students.nisn }}</p>
               <!-- nilai a -->
               <p class="textnilai nilaipai">{{ score.a1 }}</p>
               <p class="textnilai nilaipkn">{{ score.a2 }}</p>
               <p class="textnilai nilaibindo">{{ score.a3 }}</p>
               <p class="textnilai nilaimtk">{{ score.a4 }}</p>
               <p class="textnilai nilaiipa">{{ score.a5 }}</p>
               <p class="textnilai nilaiips">{{ score.a6 }}</p>
               <!-- nilai b -->
               <p class="textnilai nilaisbdp">{{ score.b1 }}</p>
               <p class="textnilai nilaipjok">{{ score.b2 }}</p>
               <!-- nilai mulok -->
               <p class="textnilai bahasajawa">Bahasa Jawa</p>
               <p class="textnilai nilaimulok">{{ score.b3a }}</p>

               <!-- rata-rata -->
               <p class="textnilai ratarata">{{ score.b3b }}</p>

               <p class="textnilai nilaidate">Jember, Juni</p>
               <p class="textnilai nilaikepsek">Elly Nuzulianti, S.S</p>
            </div>
         </div>
      </div>
   </div>
   <FooterComp></FooterComp>
   <ModalEditNilaiComp v-bind:url="url" v-bind:token="token" v-on:clickSave="showListStudent"></ModalEditNilaiComp>
</template>

<script>
import HeaderComp from '../components/HeaderComp.vue'
import FooterComp from '../components/FooterComp.vue'
import ModalEditNilaiComp from '../components/ModalEditNilaiComp.vue'
import axios from 'axios'

// const printarea = document.getElementById("printarea");

export default {
   name: "IjazahPage",
   components: {
      HeaderComp,
      FooterComp,
      ModalEditNilaiComp,
   },
   props: {
      url: String
   },
   data() {
      return {
         // url: "http://127.0.0.1:8000/api/student",
         isAdmin: "",
         token: "",
         students: "",
         score: "",
         routeIndex: this.$route.params.id
      }

   },
   methods: {
      getLocal() {
         const saveData = JSON.parse(localStorage.getItem("localData"));
         this.token = saveData.token;
         this.isAdmin = saveData.isAdmin;
      },
      showListStudent() {
         axios.get(`${this.url}/student/${this.routeIndex}`, {
            headers: {
               "Authorization": `Bearer ${this.token}`,
            }
         }).then((result) => {
            const results = result.data.data;
            this.students = results.student
            this.score = results.score
            // console.log(results)
         }).catch((err) => {
            console.log(err)
         })
      },
      print() {
         window.print()
      }
   },
   mounted() {
      this.getLocal();
      this.showListStudent()

   }
}
</script>