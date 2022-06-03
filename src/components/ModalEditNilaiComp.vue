<template>
    <div class="modal fade" id="ModalNilai" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
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
                                <td><label for="nama" class="form-label">PAI</label></td>
                                <td><input type="text" class="form-control" id="nama" /></td>
                            </tr>
                            <tr>
                                <td>1</td>
                                <td><label for="nama" class="form-label">PKn</label></td>
                                <td><input type="text" class="form-control" id="nama" /></td>
                            </tr>
                            <tr>
                                <td>1</td>
                                <td><label for="nama" class="form-label">B. Indo</label></td>
                                <td><input type="text" class="form-control" id="nama" /></td>
                            </tr>
                            <tr>
                                <td>1</td>
                                <td><label for="nama" class="form-label">MTK</label></td>
                                <td><input type="text" class="form-control" id="nama" /></td>
                            </tr>
                            <tr>
                                <td>1</td>
                                <td><label for="nama" class="form-label">IPA</label></td>
                                <td><input type="text" class="form-control" id="nama" /></td>
                            </tr>
                            <tr>
                                <td>1</td>
                                <td><label for="nama" class="form-label">IPS</label></td>
                                <td><input type="text" class="form-control" id="nama" /></td>
                            </tr>
                            <tr>
                                <td>1</td>
                                <td><label for="nama" class="form-label">SBDP</label></td>
                                <td><input type="text" class="form-control" id="nama" /></td>
                            </tr>
                            <tr>
                                <td>1</td>
                                <td><label for="nama" class="form-label">PJOK</label></td>
                                <td><input type="text" class="form-control" id="nama" /></td>
                            </tr>
                            <tr>
                                <td>1</td>
                                <td><label for="nama" class="form-label">Mulok</label></td>
                                <td><input type="text" class="form-control" id="nama" /></td>
                            </tr>
                        </tbody>
                    </table>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">
                        Close
                    </button>
                    <button type="button" class="btn btn-primary">Simpan</button>
                </div>
            </div>
        </div>
    </div>

</template>

<script>
export default {
    name: "ModalEditNilaiComp"
}
</script>