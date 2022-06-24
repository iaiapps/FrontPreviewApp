<template>
   <form v-on:submit.prevent="UploadImage">
      <div class="mb-3">
         <label for="formFile" class="form-label">Upload file ttd disini</label>
         <input class="form-control" type="file" id="formFile" />
      </div>
      <button type="submit" class="btn btn-outline-secondary w-100 mb-3">upload</button>
   </form>
   <div id="thumbnail"></div>
</template>

<script>
import axios from "axios"

export default {
   name: "UploadTtd",
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
      UploadImage() {
         console.log("upload")
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

   }
}
</script>