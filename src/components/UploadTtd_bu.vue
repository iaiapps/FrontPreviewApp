<template>
  <form v-on:submit.prevent="UploadImage">
    <label for="formFile" class="form-label" v-if="previewimg">Preview :</label>
    <br />
    <img :src="previewimg" v-if="previewimg" width="300" />
    <div class="mb-3">
      <label for="formFile" class="form-label">Upload file ttd disini</label>
      <input
        class="form-control"
        type="file"
        id="formFile"
        v-on:change="upload"
      />
    </div>
    <button
      v-on:click="submitFile()"
      class="btn btn-outline-secondary w-100 mb-3"
    >
      Upload
    </button>
  </form>
  <div id="thumbnail"></div>
</template>

<script>
import axios from "axios";

export default {
  name: "UploadTtd",
  props: ["url", "token"],
  data() {
    return {
      file: "",
      previewimg: "",
    };
  },
  methods: {
    UploadImage() {
      console.log("upload");
    },
    isVerified() {
      axios
        .get(`${this.url}/${this.routeIndex}/verified`, {
          headers: {
            Authorization: `Bearer ${this.token}`,
          },
        })
        .then((result) => {
          const results = result.data.data.isVerified;
          this.verified = results;
          console.log(results);
        })
        .catch((err) => {
          console.log(err);
        });
    },
    upload: function (e) {
      // const img = e.target.files[0].name;
      this.previewimg = URL.createObjectURL(e.target.files[0]);
    },
    submitFile() {
      let formData = new FormData();
      formData.append("file", this.file);
      axios
        .post("http://127.0.0.1:8000/api/upload_ttd", formData, {
          headers: {
            "Content-Type": "multipart/form-data",
          },
        })
        .then(function () {
          console.log("sukses");
        })
        .catch(function () {
          console.log("gagal");
        });
    },
  },
};
</script>
