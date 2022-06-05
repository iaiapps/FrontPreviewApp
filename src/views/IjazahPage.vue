<template >
   <HeaderComp></HeaderComp>
   <div class="container pt-3">
      <div class="row mb-3">
         <div class="col-12 col-lg-4 mb-5 mb-lg-0 me-auto">
            <h2 class="fw-bold">Preview Ijazah SDIT Harapan Umat Jember.</h2>
            <h3 class>Tahun Ajaran 2021/2022</h3>

            <p class="mt-3 fs-5">Cek Identitas Ijazah</p>
            <p class="fs-5">
               jika benar klik
               <b>tombol verifikasi</b> , jika ada yang perlu
               diedit klik tombol
               <b>edit identitas</b>
            </p>
            <div class="d-flex flex-wrap">
               <a
                  class="btn btn-primary me-2 mb-2 mb-sm-0"
                  data-bs-toggle="modal"
                  data-bs-target="#ModalIjazah"
                  href="#"
               >Verifikasi Ijazah</a>

               <button
                  type="button"
                  class="btn btn-outline-secondary mb-2 mb-sm-0"
                  data-bs-toggle="modal"
                  data-bs-target="#exampleModal"
               >Edit Identitas</button>
            </div>
            <small class="mt-3 d-block">*scroll/sentuh gambar untuk menggeser</small>
            <router-link
               class="btn btn-primary w-100 mt-3"
               v-if="isAdmin == true"
               v-bind:to="{ name: 'AdminPage' }"
            >kembali ke halaman admin</router-link>
         </div>

         <div class="col-12 col-lg-8">
            <div class="card p-3 mb-3">
               <h4 class>Nama Siswa : {{ student.name }}</h4>
            </div>

            <div class="card p-3 mb-3">
               <h4 v-if="student.isVerified == true">Status : Data Sudah Diverifikasi</h4>
               <h4 v-else>Status : Belum Terverifikasi</h4>
            </div>
            <div class="card p-3 cardijazah">
               <img class="imgijazah" src="../assets/img/ijazah.png" alt="ijazah" />
               <p class="textijazah textkepala">SDIT Harapan Umat Jember</p>
               <p class="textijazah textnpsn">20554128</p>
               <p class="textijazah textkab">Jember</p>
               <p class="textijazah textprov">Jawa Timur</p>
               <p class="textijazah textnamasiswa">{{ student.name }}</p>
               <p
                  class="textijazah textttl"
               >{{ student.place_of_birth }}, {{ student.date_of_birth }}</p>
               <p class="textijazah textnamaortu">{{ student.parents_name }}</p>
               <p class="textijazah textnis">{{ student.nis }}</p>
               <p class="textijazah textnisn">{{ student.nisn }}</p>
               <p class="textijazah textdate">Jember, Juni</p>
               <p class="textijazah textkepsek">Elly Nuzulianti, S.S</p>
            </div>
         </div>
      </div>
   </div>
   <!-- <button v-on:click="cek">cekkkk</button> -->
   <FooterComp></FooterComp>
   <ModalEditComp
      v-bind:url="url"
      v-bind:token="token"
      v-bind:nis="nis"
      v-bind:nisn="nisn"
      v-on:clickSave="getDataIjazah"
   ></ModalEditComp>
   <ModalVerIjazah v-bind:url="url" v-bind:token="token" v-on:clickVerified="tombolverified"></ModalVerIjazah>
</template>

<script>
import HeaderComp from '../components/HeaderComp.vue'
import FooterComp from '../components/FooterComp.vue'
import ModalEditComp from '../components/ModalEditComp'
import ModalVerIjazah from '../components/ModalVerIjazah'
import axios from 'axios'


export default {
   name: "IjazahPage",
   components: {
      HeaderComp,
      FooterComp,
      ModalEditComp,
      ModalVerIjazah,
   },
   data() {
      return {
         url: "http://127.0.0.1:8000/api/student",
         student: "",
         userId: this.$route.params.id,
         isAdmin: "",
         token: "",
         nis: "",
         nisn: "",
      }
   },
   methods: {
      // cek(){
      //     console.log(this.$route.params.id)
      // },
      getLocal() {
         const saveData = JSON.parse(localStorage.getItem("localData"));
         this.token = saveData.token;
         this.isAdmin = saveData.isAdmin;
      },
      getDataIjazah() {
         axios.get(`${this.url}/${this.userId}`, {
            headers: {
               "Authorization": `Bearer ${this.token}`,
            }
         }).then((result) => {
            const results = result.data.data.student;
            this.student = results;
            this.nis = results.nis;
            this.nisn = results.nisn;
            console.log(results);
         }).catch((err) => {
            console.log(err)
         })
      },
      tombolverified() {
         this.getDataIjazah()
      },

   },
   mounted() {
      this.getLocal();
      this.getDataIjazah();

   }
}
</script>