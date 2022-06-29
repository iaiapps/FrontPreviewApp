<template>
   <div
      class="modal fade"
      id="ModalNilai"
      tabindex="-1"
      aria-labelledby="exampleModalLabel"
      aria-hidden="true"
   >
      <div class="modal-dialog">
         <div class="modal-content">
            <div class="modal-header">
               <h5 class="modal-title" id="exampleModalLabel">Edit Nilai Ijazah</h5>
               <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            <div class="modal-body">
               <table class="table">
                  <thead>
                     <tr>
                        <th scope="col">#</th>
                        <th scope="col">Mata Pelajaran</th>
                        <th scope="col">Nilai</th>
                     </tr>
                  </thead>
                  <tbody>
                     <tr>
                        <td>1</td>
                        <td>
                           <label for="nama1" class="form-label">PAI</label>
                        </td>
                        <td>
                           <input type="number" class="form-control" id="nama1" v-model="a1" />
                        </td>
                     </tr>
                     <tr>
                        <td>2</td>
                        <td>
                           <label for="nama2" class="form-label">PKn</label>
                        </td>
                        <td>
                           <input type="number" class="form-control" id="nama2" v-model="a2" />
                        </td>
                     </tr>
                     <tr>
                        <td>3</td>
                        <td>
                           <label for="nama3" class="form-label">B. Indo</label>
                        </td>
                        <td>
                           <input type="number" class="form-control" id="nama3" v-model="a3" />
                        </td>
                     </tr>
                     <tr>
                        <td>4</td>
                        <td>
                           <label for="nama4" class="form-label">MTK</label>
                        </td>
                        <td>
                           <input type="number" class="form-control" id="nama4" v-model="a4" />
                        </td>
                     </tr>
                     <tr>
                        <td>5</td>
                        <td>
                           <label for="nama5" class="form-label">IPA</label>
                        </td>
                        <td>
                           <input type="number" class="form-control" id="nama5" v-model="a5" />
                        </td>
                     </tr>
                     <tr>
                        <td>6</td>
                        <td>
                           <label for="nama6" class="form-label">IPS</label>
                        </td>
                        <td>
                           <input type="number" class="form-control" id="nama6" v-model="a6" />
                        </td>
                     </tr>
                     <tr>
                        <td>7</td>
                        <td>
                           <label for="nama7" class="form-label">SBDP</label>
                        </td>
                        <td>
                           <input type="number" class="form-control" id="nama7" v-model="b1" />
                        </td>
                     </tr>
                     <tr>
                        <td>8</td>
                        <td>
                           <label for="nama8" class="form-label">PJOK</label>
                        </td>
                        <td>
                           <input type="number" class="form-control" id="nama8" v-model="b2" />
                        </td>
                     </tr>
                     <tr>
                        <td>9</td>
                        <td>
                           <label for="nama9" class="form-label9">Bahasa Jawa</label>
                        </td>
                        <td>
                           <input type="number" class="form-control" id="nama9" v-model="b3a" />
                        </td>
                     </tr>
                     <tr>
                        <td>10</td>
                        <td>
                           <label for="nama0" class="form-label">Rata-rata</label>
                        </td>
                        <td>
                           <input
                              type="number"
                              class="form-control"
                              id="nama0"
                              v-model="b3b"
                              disabled
                           />
                        </td>
                     </tr>
                  </tbody>
               </table>
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

            <button v-on:click="rerata">ss</button>
         </div>
      </div>
   </div>
</template>

<script>
import axios from "axios"

export default {
   name: "ModalEditNilaiComp",
   props: [
      "url",
      "token"
   ],
   data() {
      return {
         userId: this.$route.params.id,
         a1: "",
         a2: "",
         a3: "",
         a4: "",
         a5: "",
         a6: "",
         b1: "",
         b2: "",
         b3a: "",
         b3b: ""
      }
   },
   methods: {
      rerata() {
         const arr = [this.a1, this.a2]

         const hasil = arr / arr.length
         console.log(hasil)
      },

      editNilaiIjazah() {
         axios.defaults.headers.common[
            "Authorization"
         ] = `Bearer ${this.token}`;
         axios.put(`${this.url}/student/${this.userId}/edit_score`, {
            a1: this.a1,
            a2: this.a2,
            a3: this.a3,
            a4: this.a4,
            a5: this.a5,
            a6: this.a6,
            b1: this.b1,
            b2: this.b2,
            b3a: this.b3a,

         }).then().catch((err) => {
            console.log(err)
         })
      },
      buttonSave() {
         this.editNilaiIjazah()
         this.$emit("clickSave")
      }
   },
   computed: {

   },
   updated() {
      this.rerata()
   }
}
</script>