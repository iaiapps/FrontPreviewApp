<template>
    <HeaderComp></HeaderComp>
    <div class="container pt-3">
        <div class="row mb-5">
            <MenulistComp></MenulistComp>
            <div class="col-12 col-lg-8">
                <div class="card p-3 mb-3">
                    <h4 class="fw-bold">Home Ijazah</h4>
                </div>
                <div class="card p-3">
                    <table class="table">
                        <thead>
                            <tr>
                                <th scope="col">#</th>
                                <th scope="col">Nama</th>
                                <th scope="col">Status</th>
                                <th scope="col">Action</th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr v-for="(student, index) in students" :key="student.id">
                                <th scope="row">{{ index + 1 }}</th>
                                <td>{{ student.name }}</td>
                                <td>{{ student.isVerified }}</td>
                                <td>
                                    <div>
                                        <router-link
                                            v-bind:to="{ name: 'IjazahPage', params: { id: student.id } }"
                                        >
                                            <button class="btn btn-primary">view</button>
                                        </router-link>

                                        <button class="btn btn-primary">edit</button>
                                        <button class="btn btn-primary">hapus</button>
                                    </div>
                                </td>
                            </tr>
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
    </div>
</template>

<script>
import axios from 'axios'
import HeaderComp from '../components/HeaderComp.vue'
import MenulistComp from '../components/MenulistComp.vue'

export default {
    name: "AdminPage",
    components: {
        HeaderComp,
        MenulistComp
    },
    data() {
        return {
            url: "http://127.0.0.1:8000/api/student",
            token: "eyJ0eXAiOiJKV1QiLCJhbGciOiJSUzI1NiJ9.eyJhdWQiOiIxIiwianRpIjoiMjAzNjA4Mjc2MGI5OTUwMTBiOWEwYTkzOTUwMDc2NTFjZjA4ODU3OWJkZTUwMjI1ZTQyYjg5MDU1ZGJkY2UzNDYzZDEwMWJhYjgzNTMzOGUiLCJpYXQiOjE2NTQyNDE5NDkuMjQ2OTE4OTE2NzAyMjcwNTA3ODEyNSwibmJmIjoxNjU0MjQxOTQ5LjI0NjkyMjk2OTgxODExNTIzNDM3NSwiZXhwIjoxNjg1Nzc3OTQ5LjE3NTg0NzA1MzUyNzgzMjAzMTI1LCJzdWIiOiIxIiwic2NvcGVzIjpbXX0.vurHQdr2foqKVx-Qvtavo7EcXz2892O2faarCRB3C7ATYSB1Pyy1lnaR0IlQnwtvO1Ki23VA2K_w47uni87PKfjeC-Wbodm8qp_J4ybF_L6EMwvh4x6ruSFSqYsZRWEgfdSQW_aS1oq8CIJ9GvHaXI98AZbCUF5tDjOpDfIFc04-YOcOKIuhdUn6TwOcKFZccelRglPKXKRp6Enr0s2fH2OgSYRBivNZ8xRhODF4fNQLXG96g_SLC0ubQqbFzOdegN5y0PFhGgkoRYM5w9Ou7Ji4tl8bNNFf9JkDDFWyz3pHip7Sh0-qUkhWQMo6EkohIQqbLAl7X4fntN9waklPFwGlcbPLnmqaHv-HUmceKGeEprYKA8PjUD59skH5mE8Ccl4j4alPfwtdrtb9cPKWvNmZKzzl_RoNGCEcNaLNolgx1GcT4CdtrGiLTpdtcqjoX9SvabVO0AV9xdE0s65dKgNT-4b8qn1H81ZNZAWAbYYVJkg5cdktgNHon6xjpdYFE6i0wKub3sgVA9_EXBXJd5_yCTn2Sq2qQMm5o-npmorSmuKaxm8y1wCRoPS77ceG6ChpnEzS94QnzFMO7Zi6cPQF-YXMa0ejbfRbdnA1RxC-PhkuuyzZ-G-XeoAFR0yAajxMqcx1P71yG1-tZYJH-ExeMVRxItrXSSdxsfvo-Xc",
            students: "",
        }

    },
    methods: {
        showIjazah() {
            axios.get(this.url, {
                headers: {
                    "Authorization": `Bearer ${this.token}`,
                }
            }).then((result) => {
                const results = result.data.data;
                this.students = results
                console.log(results)
            }).catch((err) => {
                console.log(err)
            })

        }
    },
    mounted() {
        setTimeout(() => {
            this.showIjazah()
        }, 500)
    }

}
</script>