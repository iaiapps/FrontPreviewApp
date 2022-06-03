<template>
    <HeaderComp></HeaderComp>
    <div class="container pt-3">
        <div class="row mb-3">
            <div class="col-12 col-lg-4 mb-5 mb-lg-0 me-auto">
                <h2 class="fw-bold">Preview Nilai Ijazah SDIT Harapan Umat Jember.</h2>
                <h3 class>Tahun Ajaran 2021/2022</h3>

                <p class="mt-3 fs-5">Cek Nilai Ijazah</p>
                <!-- <p class="fs-5">
                    jika benar klik <b>tombol verifikasi</b> , jika ada yang perlu
                    diedit klik tombol <b>edit identitas</b>
                </p>-->
                <div class="d-flex flex-wrap">
                    <!-- <a class="btn btn-primary me-2 mb-2 mb-sm-0" data-bs-toggle="modal" data-bs-target="#ModalIjazah"
                    href="#">Verifikasi Ijazah</a>-->

                    <button
                        type="button"
                        class="btn btn-outline-primary mb-2 mb-sm-0"
                        data-bs-toggle="modal"
                        data-bs-target="#ModalNilai"
                    >Edit Nilai Ijazah</button>
                </div>
                <small class="mt-3 d-block">*scroll/sentuh gambar untuk menggeser</small>
            </div>
            <div class="col-12 col-lg-8">
                <div class="card p-3 mb-3">
                    <h4 class>Nama Siswa : {{ students.name }}</h4>
                </div>
                <!-- <div class="card p-3 mb-3">
                    <h4 class="">Status : Belum Terverifikasi</h4>
                </div>-->
                <div class="card p-3 cardijazah">
                    <img class="imgijazah" src="../assets/img/nilai.png" alt="ijazah" />
                    <p class="textnilai nilainamasiswa">{{ students.name }}</p>
                    <p
                        class="textnilai nilaittl"
                    >{{ students.place_of_birth }}, {{ students.date_of_birth }}</p>
                    <p class="textnilai nilainis">{{ students.nis }}</p>
                    <p class="textnilai nilainisn">{{ students.nisn }}</p>
                    <!-- nilai a -->
                    <p class="textnilai nilaipai">{{ score.a1 }}</p>
                    <p class="textnilai nilaipkn">{{ score.a2 }}</p>
                    <p class="textnilai nilaibindo">{{score.a3}}</p>
                    <p class="textnilai nilaimtk">{{score.a4}}</p>
                    <p class="textnilai nilaiipa">{{score.a5}}</p>
                    <p class="textnilai nilaiips">{{score.a6}}</p>
                    <!-- nilai b -->
                    <p class="textnilai nilaisbdp">{{score.b1}}</p>
                    <p class="textnilai nilaipjok">{{score.b2}}</p>
                    <!-- nilai mulok -->
                    <!-- <p class="textnilai nilaimulok">{{score.b3a}}</p> -->
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
import axios from 'axios'


export default {
    name: "IjazahPage",
    components: {
        HeaderComp,
        FooterComp,
        ModalEditNilaiComp,
    },
    data() {
        return {
            url: "http://127.0.0.1:8000/api/student",
            token: "eyJ0eXAiOiJKV1QiLCJhbGciOiJSUzI1NiJ9.eyJhdWQiOiIxIiwianRpIjoiMjAzNjA4Mjc2MGI5OTUwMTBiOWEwYTkzOTUwMDc2NTFjZjA4ODU3OWJkZTUwMjI1ZTQyYjg5MDU1ZGJkY2UzNDYzZDEwMWJhYjgzNTMzOGUiLCJpYXQiOjE2NTQyNDE5NDkuMjQ2OTE4OTE2NzAyMjcwNTA3ODEyNSwibmJmIjoxNjU0MjQxOTQ5LjI0NjkyMjk2OTgxODExNTIzNDM3NSwiZXhwIjoxNjg1Nzc3OTQ5LjE3NTg0NzA1MzUyNzgzMjAzMTI1LCJzdWIiOiIxIiwic2NvcGVzIjpbXX0.vurHQdr2foqKVx-Qvtavo7EcXz2892O2faarCRB3C7ATYSB1Pyy1lnaR0IlQnwtvO1Ki23VA2K_w47uni87PKfjeC-Wbodm8qp_J4ybF_L6EMwvh4x6ruSFSqYsZRWEgfdSQW_aS1oq8CIJ9GvHaXI98AZbCUF5tDjOpDfIFc04-YOcOKIuhdUn6TwOcKFZccelRglPKXKRp6Enr0s2fH2OgSYRBivNZ8xRhODF4fNQLXG96g_SLC0ubQqbFzOdegN5y0PFhGgkoRYM5w9Ou7Ji4tl8bNNFf9JkDDFWyz3pHip7Sh0-qUkhWQMo6EkohIQqbLAl7X4fntN9waklPFwGlcbPLnmqaHv-HUmceKGeEprYKA8PjUD59skH5mE8Ccl4j4alPfwtdrtb9cPKWvNmZKzzl_RoNGCEcNaLNolgx1GcT4CdtrGiLTpdtcqjoX9SvabVO0AV9xdE0s65dKgNT-4b8qn1H81ZNZAWAbYYVJkg5cdktgNHon6xjpdYFE6i0wKub3sgVA9_EXBXJd5_yCTn2Sq2qQMm5o-npmorSmuKaxm8y1wCRoPS77ceG6ChpnEzS94QnzFMO7Zi6cPQF-YXMa0ejbfRbdnA1RxC-PhkuuyzZ-G-XeoAFR0yAajxMqcx1P71yG1-tZYJH-ExeMVRxItrXSSdxsfvo-Xc",
            students: "",
            score: "",
            routeIndex: this.$route.params.id
        }

    },
    methods: {
        showListStudent() {
            axios.get(`${this.url}/${this.routeIndex}`, {
                headers: {
                    "Authorization": `Bearer ${this.token}`,
                }
            }).then((result) => {
                const results = result.data.data;
                this.students = results
                this.score = results.score
                console.log(results)
            }).catch((err) => {
                console.log(err)
            })

        }
    },
    mounted() {
        setTimeout(() => {
            this.showListStudent()
        }, 500)
    }
}
</script>