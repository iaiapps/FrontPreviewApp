<template>
  <form v-on:submit.prevent="handleSubmit">
    <div class="mb-3">
      <img :src="imageUrl" v-show="imageUrl" width="300" />
      <br />
      <label for="formFile" class="form-label">Upload file ttd disini</label>
      <input
        class="form-control"
        type="file"
        accept="image/*"
        id="formFile"
        v-on:change="handleImgSelected"
      />
    </div>
    <button class="btn btn-outline-secondary w-100 mb-3">Upload</button>
  </form>
  <div id="thumbnail"></div>
</template>

<script>
import axios from "axios";
import { useImageUpload } from "@/composables/useImageUpload.js";

export default {
  name: "UploadTtd",
  props: ["url", "token"],

  data() {
    return {
      routeIndex: this.$route.params.id,
    };
  },

  setup() {
    let { imageUrl, imageFile, handleImgSelected } = useImageUpload();

    function handleSubmit() {
      let data = new FormData();
      data.append("image", imageFile.value);

      axios.defaults.headers.common["Authorization"] = `Bearer ${this.token}`;
      axios
        .post(`http://127.0.0.1:8000/api/upload_ttd/3`, data)
        .then((response) => {
          console.log(response);
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
