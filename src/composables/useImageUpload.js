import { ref, watch } from "vue";

export function useImageUpload() {
  let imageFile = ref("");
  let imageUrl = ref("");

  function handleImgSelected(e) {
    console.log(e);
    if (e.target.files.length === 0) {
      imageFile.value = "";
      imageUrl.value = "";
      return;
    }
    imageFile.value = e.target.files[0];
  }

  watch(imageFile, (imageFile) => {
    if (!(imageFile instanceof File)) {
      return;
    }

    let fileReader = new FileReader();

    fileReader.readAsDataURL(imageFile);

    fileReader.addEventListener("load", () => {
      imageUrl.value = fileReader.result;
      //   console.log("setup =>  imageUrl.value", imageUrl.value);
    });
  });

  return {
    handleImgSelected,
    imageFile,
    imageUrl,
  };
}
