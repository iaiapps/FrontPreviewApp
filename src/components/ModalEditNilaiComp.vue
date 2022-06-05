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
                           <label for="nama" class="form-label">PAI</label>
                        </td>
                        <td>
                           <input type="number" class="form-control" id="nama" v-model="a1" />
                        </td>
                     </tr>
                     <tr>
                        <td>2</td>
                        <td>
                           <label for="nama" class="form-label">PKn</label>
                        </td>
                        <td>
                           <input type="number" class="form-control" id="nama" v-model="a2" />
                        </td>
                     </tr>
                     <tr>
                        <td>3</td>
                        <td>
                           <label for="nama" class="form-label">B. Indo</label>
                        </td>
                        <td>
                           <input type="number" class="form-control" id="nama" v-model="a3" />
                        </td>
                     </tr>
                     <tr>
                        <td>4</td>
                        <td>
                           <label for="nama" class="form-label">MTK</label>
                        </td>
                        <td>
                           <input type="number" class="form-control" id="nama" v-model="a4" />
                        </td>
                     </tr>
                     <tr>
                        <td>5</td>
                        <td>
                           <label for="nama" class="form-label">IPA</label>
                        </td>
                        <td>
                           <input type="number" class="form-control" id="nama" v-model="a5" />
                        </td>
                     </tr>
                     <tr>
                        <td>6</td>
                        <td>
                           <label for="nama" class="form-label">IPS</label>
                        </td>
                        <td>
                           <input type="number" class="form-control" id="nama" v-model="a6" />
                        </td>
                     </tr>
                     <tr>
                        <td>7</td>
                        <td>
                           <label for="nama" class="form-label">SBDP</label>
                        </td>
                        <td>
                           <input type="number" class="form-control" id="nama" v-model="b1" />
                        </td>
                     </tr>
                     <tr>
                        <td>8</td>
                        <td>
                           <label for="nama" class="form-label">PJOK</label>
                        </td>
                        <td>
                           <input type="number" class="form-control" id="nama" v-model="b2" />
                        </td>
                     </tr>
                     <tr>
                        <td>9</td>
                        <td>
                           <label for="nama" class="form-label">Mulok</label>
                        </td>
                        <td>
                           <input type="number" class="form-control" id="nama" v-model="b3a" />
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
         a1: "",
         a2: "",
         a3: "",
         a4: "",
         a5: "",
         a6: "",
         b1: "",
         b2: "",
         b3a: "",
         userId: this.$route.params.id,
      }
   },
   methods: {
      editNilaiIjazah() {
         axios.defaults.headers.common[
            "Authorization"
         ] = `Bearer ${this.token}`;
         axios.put(`${this.url}/${this.userId}/edit_score`, {
            a1: this.a1,
            a2: this.a2,
            a3: this.a3,
            a4: this.a4,
            a5: this.a5,
            a6: this.a6,
            b1: this.b1,
            b2: this.b2,
            // b3a: this.b3a,

         }).then((result) => {
            const results = result.data.data;
            // this.student = results;
            console.log(results);
         }).catch((err) => {
            console.log(err)
         })
      },
      buttonSave() {
         this.editNilaiIjazah()
         this.$emit("clickSave")
      }
   }
}
</script>