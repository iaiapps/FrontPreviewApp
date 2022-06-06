<template>
   <div
      class="modal fade"
      id="exampleModal"
      tabindex="-1"
      aria-labelledby="exampleModalLabel"
      aria-hidden="true"
   >
      <div class="modal-dialog">
         <div class="modal-content">
            <div class="modal-header">
               <h5 class="modal-title" id="exampleModalLabel">Edit Identitas</h5>
               <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            <div class="modal-body">
               <div class="mb-3">
                  <label for="nama" class="form-label">Nama Siswa</label>
                  <input type="text" class="form-control" id="nama" v-model="edit.name" />
               </div>
               <div class="mb-3">
                  <label for="tempat_lahir" class="form-label">Tempat Lahir</label>
                  <input
                     type="text"
                     class="form-control"
                     id="tempat_lahir"
                     v-model="edit.placeBirth"
                  />
               </div>
               <div class="mb-3">
                  <label for="tanggal_lahir" class="form-label">Tanggal Lahir</label>
                  <input
                     type="text"
                     class="form-control"
                     id="tanggal_lahir"
                     v-model="edit.dateBirth"
                  />
               </div>
               <div class="mb-3">
                  <label for="ortu/wali" class="form-label">Nama Orang Tua/Wali</label>
                  <input type="text" class="form-control" id="ortu/wali" v-model="edit.parent" />
               </div>
            </div>
            <div class="modal-footer">
               <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
               <button
                  type="button"
                  class="btn btn-primary"
                  data-bs-dismiss="modal"
                  v-on:click="buttonSave"
               >Simpan</button>
            </div>
         </div>
      </div>
   </div>
</template>

<script>
import axios from 'axios'

export default {
   name: "ModalEditComp",
   props: [
      "url",
      "token",
      "nis",
      "nisn"
   ],
   data() {
      return {
         userId: this.$route.params.id,
         edit: {
            name: "",
            palceBirth: "",
            dateBirth: "",
            parent: ""

         }
      }
   },
   methods: {
      editDataIjazah() {
         axios.defaults.headers.common[
            "Authorization"
         ] = `Bearer ${this.token}`;
         axios.put(`${this.url}/${this.userId}`, {
            name: this.edit.name,
            place_of_birth: this.edit.placeBirth,
            date_of_birth: this.edit.dateBirth,
            parents_name: this.edit.parent,
            nis: this.nis,
            nisn: this.nisn,
            // isUpdate: true,

         }).then((result) => {
            const results = result.data.data;
            // this.student = results;
            console.log(results);
         }).catch((err) => {
            console.log(err)
         })
      },
      buttonSave() {
         this.editDataIjazah()
         this.$emit("clickSave")
      }
   }
};
</script>
