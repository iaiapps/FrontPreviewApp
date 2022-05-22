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
                            <tr>
                                <th scope="row">1</th>
                                <td>Nama Siswanya</td>
                                <td>Sudah Verifikasi</td>
                                <td>
                                    <div>
                                        <button class="btn btn-primary">view</button>
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
import HeaderComp from '../components/HeaderComp.vue'
import MenulistComp from '../components/MenulistComp.vue'

export default {
    name: "AdminPage",
    components: {
        HeaderComp,
        MenulistComp
    }
}
</script>