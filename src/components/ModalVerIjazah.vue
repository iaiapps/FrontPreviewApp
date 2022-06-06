<template>
   <div
      class="modal fade"
      id="ModalIjazah"
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
            <div class="modal-body text-center">
               <h4>Apakah anda yakin ingin memverifikasi identitas pada Ijazah?</h4>
            </div>
            <div class="modal-footer">
               <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Tidak</button>
               <button
                  type="button"
                  class="btn btn-primary"
                  v-on:click="verIjazah"
                  data-bs-dismiss="modal"
               >Setuju</button>
               <!-- <button v-on:click="cek">cek</button> -->
            </div>
         </div>
      </div>
   </div>
</template>

<script>
import axios from "axios"

export default {
   name: "ModalVerIjazah",
   props: [
      "url",
      "token"
   ],
   data() {
      return {
         verified: "",
         routeIndex: this.$route.params.id
      }
   },
   methods: {
      cek() {
         console.log(this.token)
      },
      isVerified() {
         axios.get(`${this.url}/${this.routeIndex}/verified`, {
            headers: {
               "Authorization": `Bearer ${this.token}`,
            }
         }).then((result) => {
            const results = result.data.data.isVerified
            this.verified = results
            console.log(results)
         }).catch((err) => { console.log(err) })
      },
      verIjazah() {
         this.isVerified();
         this.$emit("clickVerified")

      },
      reRender() {
         console.log("s")
      }
   }
}
</script>