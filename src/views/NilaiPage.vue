<template>
    <HeaderComp></HeaderComp>
    <div class="container pt-3 ">
        <div class="row mb-3">
            <div class="col-12 col-lg-4 mb-5 mb-lg-0 me-auto">
                <h2 class="fw-bold">Preview Nilai Ijazah SDIT Harapan Umat Jember.</h2>
                <h3 class="">Tahun Ajaran 2021/2022</h3>

                <p class="mt-3 fs-5">Cek Nilai Ijazah</p>
                <!-- <p class="fs-5">
                    jika benar klik <b>tombol verifikasi</b> , jika ada yang perlu
                    diedit klik tombol <b>edit identitas</b>
                </p> -->
                <div class="d-flex flex-wrap">
                    <!-- <a class="btn btn-primary me-2 mb-2 mb-sm-0" data-bs-toggle="modal" data-bs-target="#ModalIjazah"
                        href="#">Verifikasi Ijazah</a> -->

                    <button type="button" class="btn btn-outline-primary mb-2 mb-sm-0" data-bs-toggle="modal"
                        data-bs-target="#ModalNilai">
                        Edit Nilai Ijazah
                    </button>
                </div>
                <small class="mt-3 d-block">*scroll/sentuh gambar untuk menggeser</small>
            </div>
            <div class="col-12 col-lg-8 ">
                <div class="card p-3 mb-3">
                    <h4 class="">Nama Siswa : Nama Siswa</h4>
                </div>
                <!-- <div class="card p-3 mb-3">
                    <h4 class="">Status : Belum Terverifikasi</h4>
                </div> -->
                <div class="card p-3 cardijazah">
                    <img class="imgijazah" src="../assets/img/nilai.png" alt="ijazah" />
                    <p class="textnilai nilainamasiswa">Nama Siswa</p>
                    <p class="textnilai nilaittl">Tempat, tanggal lahir</p>
                    <p class="textnilai nilainis">NIS</p>
                    <p class="textnilai nilainisn">NISN</p>

                    <p class="textnilai nilaipai">100</p>
                    <p class="textnilai nilaipkn">100</p>
                    <p class="textnilai nilaibindo">100</p>
                    <p class="textnilai nilaimtk">100</p>
                    <p class="textnilai nilaiipa">100</p>
                    <p class="textnilai nilaiips">100</p>
                    <p class="textnilai nilaisbdp">100</p>
                    <p class="textnilai nilaipjok">100</p>
                    <p class="textnilai nilaimulok">100</p>
                    <p class="textnilai nilaidate">Jember, Juni</p>
                    <p class="textnilai nilaikepsek">Elly Nuzulianti, S.S</p>
                </div>
            </div>
        </div>
    </div>
    <FooterComp></FooterComp>
    <ModalEditNilaiComp></ModalEditNilaiComp>

</template>

<script>
import HeaderComp from '../components/HeaderComp.vue'
import FooterComp from '../components/FooterComp.vue'
import ModalEditNilaiComp from '../components/ModalEditNilaiComp.vue'



export default {
    name: "IjazahPage",
    components: {
        HeaderComp,
        FooterComp,
        ModalEditNilaiComp,

    }
}
</script>