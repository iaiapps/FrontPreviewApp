<template>
    <div class="container d-flex justify-content-center mt-5">
        <div class="card p-3 rounded lebar shadow">
            <div class="text-center bg-light p-3">
                <h4><b>Selamat Datang di aplikasi Preview Ijazah </b></h4>
                <h5>SDIT Harapan Umat Jember</h5>
            </div>
            <hr />
            <div class="row">
                <div class="col text-center my-3">
                    <router-link to="/admin">
                        <button class="btn btn-outline-dark p-3">
                            <img class="button-pilih" src="../assets/img/principal.png" alt="" />
                        </button>
                    </router-link>
                    <br />
                    <h5 class="mt-1">Login Guru</h5>
                </div>
                <div class="col text-center my-3">
                    <router-link to="/login">
                        <button class="btn btn-outline-dark p-3">
                            <img class="button-pilih" src="../assets/img/student.png" alt="" /></button>
                    </router-link>
                    <br />
                    <h5 class="mt-1">Login Siswa</h5>
                </div>
            </div>
            <p class="small mt-3 text-center bg-light p-3">
                *pilih tombol diatas untuk masuk
            </p>
        </div>
    </div>
</template>

<script>
export default {
    name: 'AwalComp',
}
</script>