<template>
    <HeaderComp></HeaderComp>
    <div class="container pt-3 ">
        <div class="row mb-3">
            <div class="col-12 col-lg-4 mb-5 mb-lg-0 me-auto">
                <h2 class="fw-bold">Preview Ijazah SDIT Harapan Umat Jember.</h2>
                <h3 class="">Tahun Ajaran 2021/2022</h3>

                <p class="mt-3 fs-5">Cek Identitas Ijazah</p>
                <p class="fs-5">
                    jika benar klik <b>tombol verifikasi</b> , jika ada yang perlu
                    diedit klik tombol <b>edit identitas</b>
                </p>
                <div class="d-flex flex-wrap">
                    <a class="btn btn-primary me-2 mb-2 mb-sm-0" data-bs-toggle="modal" data-bs-target="#ModalIjazah"
                        href="#">Verifikasi Ijazah</a>

                    <button type="button" class="btn btn-outline-secondary mb-2 mb-sm-0" data-bs-toggle="modal"
                        data-bs-target="#exampleModal">
                        Edit Identitas
                    </button>
                </div>
                <small class="mt-3 d-block">*scroll/sentuh gambar untuk menggeser</small>
            </div>
            <div class="col-12 col-lg-8 ">
                <div class="card p-3 mb-3">
                    <h4 class="">Nama Siswa : Nama Siswa</h4>
                </div>
                <div class="card p-3 mb-3">
                    <h4 class="">Status : Belum Terverifikasi</h4>
                </div>
                <div class="card p-3 cardijazah">
                    <img class="imgijazah" src="../assets/img/ijazah.png" alt="ijazah" />
                    <p class="textijazah textkepala">SDIT Harapan Umat Jember</p>
                    <p class="textijazah textnpsn">20554128</p>
                    <p class="textijazah textkab">Jember</p>
                    <p class="textijazah textprov">Jawa Timur</p>
                    <p class="textijazah textnamasiswa">Nama Siswa</p>
                    <p class="textijazah textttl">Tempat, tanggal lahir</p>
                    <p class="textijazah textnamaortu">Nama Ortu/Wali</p>
                    <p class="textijazah textnis">NIS</p>
                    <p class="textijazah textnisn">NISN</p>
                    <p class="textijazah textdate">Jember, Juni</p>
                    <p class="textijazah textkepsek">Elly Nuzulianti, S.S</p>
                </div>
            </div>
        </div>
    </div>
    <FooterComp></FooterComp>
    <ModalEditComp></ModalEditComp>
    <ModalVerIjazah></ModalVerIjazah>
</template>

<script>
import HeaderComp from '../components/HeaderComp.vue'
import FooterComp from '../components/FooterComp.vue'
import ModalEditComp from '../components/ModalEditComp'
import ModalVerIjazah from '../components/ModalVerIjazah'


export default {
    name: "IjazahPage",
    components: {
        HeaderComp,
        FooterComp,
        ModalEditComp,
        ModalVerIjazah,
    }
}
</script>