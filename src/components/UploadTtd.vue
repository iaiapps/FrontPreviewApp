<template>
   <form v-on:submit.prevent="handleSubmit">
      <div class="mb-3">
         <label for="formFile" class="form-label">
            Upload file
            <b>tanda tangan</b> disini (pilih gambar lalu klik upload)
         </label>
         <img :src="imageUrl" v-show="imageUrl" class="img-fluid" />
         <input
            class="form-control mt-3"
            type="file"
            accept="image/*"
            id="formFile"
            v-on:change="handleImgSelected"
         />
      </div>
      <div class="text-center">
         <img :src="signature" class="img-fluid" v-show="signature" />
      </div>
      <br />
      <button class="btn btn-outline-secondary w-100 mb-3">Upload</button>
   </form>
</template>

<script>
import axios from "axios";
import { useRoute } from "vue-router";
import { useImageUpload } from "@/composables/useImageUpload.js";

export default {
   name: "UploadTtd",
   props: ["url", "token", "signature"],

   data() {
      return {
         routeIndex: this.$route.params.id,
      };
   },

   setup() {
      const route = useRoute();
      const id = route.params.id;
      let { imageUrl, imageFile, handleImgSelected } = useImageUpload();

      function handleSubmit() {
         let data = new FormData();
         data.append("image", imageFile.value);

         axios.defaults.headers.common["Authorization"] = `Bearer ${this.token}`;
         axios
            .post(`http://127.0.0.1:8000/api/upload_ttd/${id}`, data)
            .then((response) => {
               console.log(response.data);
               location.reload()
            });
      }

      return {
         handleSubmit,
         imageUrl,
         imageFile,
         handleImgSelected,
      };
   },
};
</script>
