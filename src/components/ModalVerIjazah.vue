<template>
    <div class="modal fade" id="ModalIjazah" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
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
                    <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">
                        Tidak
                    </button>
                    <button type="button" class="btn btn-primary">Setuju</button>
                </div>
            </div>
        </div>
    </div>

</template>

<script>
export default {
    name: "ModalVerIjazah"
}
</script>