<template>
    <div
        class="modal fade"
        id="ModalIjazah"
        tabindex="-1"
        aria-labelledby="exampleModalLabel"
        aria-hidden="true"
    >
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="exampleModalLabel">Edit Identitas</h5>
                    <button
                        type="button"
                        class="btn-close"
                        data-bs-dismiss="modal"
                        aria-label="Close"
                    ></button>
                </div>
                <div class="modal-body text-center">
                    <h4>Apakah anda yakin ingin memverifikasi identitas pada Ijazah?</h4>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Tidak</button>
                    <button
                        type="button"
                        class="btn btn-primary"
                        v-on:click="verIjazah"
                        data-bs-dismiss="modal"
                    >Setuju</button>
                </div>
            </div>
        </div>
    </div>
</template>

<script>
import axios from "axios"

export default {
    name: "ModalVerIjazah",
    props: [
        "dataVerified",
        "url"
    ],
    emits: [
        "buttoncobaver"
    ],
    data() {
        return {
            token: "eyJ0eXAiOiJKV1QiLCJhbGciOiJSUzI1NiJ9.eyJhdWQiOiIxIiwianRpIjoiMjAzNjA4Mjc2MGI5OTUwMTBiOWEwYTkzOTUwMDc2NTFjZjA4ODU3OWJkZTUwMjI1ZTQyYjg5MDU1ZGJkY2UzNDYzZDEwMWJhYjgzNTMzOGUiLCJpYXQiOjE2NTQyNDE5NDkuMjQ2OTE4OTE2NzAyMjcwNTA3ODEyNSwibmJmIjoxNjU0MjQxOTQ5LjI0NjkyMjk2OTgxODExNTIzNDM3NSwiZXhwIjoxNjg1Nzc3OTQ5LjE3NTg0NzA1MzUyNzgzMjAzMTI1LCJzdWIiOiIxIiwic2NvcGVzIjpbXX0.vurHQdr2foqKVx-Qvtavo7EcXz2892O2faarCRB3C7ATYSB1Pyy1lnaR0IlQnwtvO1Ki23VA2K_w47uni87PKfjeC-Wbodm8qp_J4ybF_L6EMwvh4x6ruSFSqYsZRWEgfdSQW_aS1oq8CIJ9GvHaXI98AZbCUF5tDjOpDfIFc04-YOcOKIuhdUn6TwOcKFZccelRglPKXKRp6Enr0s2fH2OgSYRBivNZ8xRhODF4fNQLXG96g_SLC0ubQqbFzOdegN5y0PFhGgkoRYM5w9Ou7Ji4tl8bNNFf9JkDDFWyz3pHip7Sh0-qUkhWQMo6EkohIQqbLAl7X4fntN9waklPFwGlcbPLnmqaHv-HUmceKGeEprYKA8PjUD59skH5mE8Ccl4j4alPfwtdrtb9cPKWvNmZKzzl_RoNGCEcNaLNolgx1GcT4CdtrGiLTpdtcqjoX9SvabVO0AV9xdE0s65dKgNT-4b8qn1H81ZNZAWAbYYVJkg5cdktgNHon6xjpdYFE6i0wKub3sgVA9_EXBXJd5_yCTn2Sq2qQMm5o-npmorSmuKaxm8y1wCRoPS77ceG6ChpnEzS94QnzFMO7Zi6cPQF-YXMa0ejbfRbdnA1RxC-PhkuuyzZ-G-XeoAFR0yAajxMqcx1P71yG1-tZYJH-ExeMVRxItrXSSdxsfvo-Xc",
            verified: "",
            routeIndex: this.$route.params.id
        }
    },
    methods: {
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
        verIjazah() {
            this.isVerified(),
            this.$emit("clickVerified")
    
        },
        reRender() {
            console.log("s")
        }
    }
}
</script>