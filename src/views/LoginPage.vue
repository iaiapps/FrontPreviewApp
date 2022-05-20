<template>
    <div class="container d-flex justify-content-center mt-5">
        <div class="card p-3 rounded shadow col-12 col-sm-6">
            <div class="text-center bg-light p-3">
                <h4><b>Login Aplikasi Preview Ijazah </b></h4>
                <h5>SDIT Harapan Umat Jember</h5>
            </div>
            <hr />
            <form>
                <div class="mb-3">
                    <label for="exampleInputEmail1" class="form-label">Email address</label>
                    <input type="email" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" />
                </div>
                <div class="mb-3">
                    <label for="exampleInputPassword1" class="form-label">Password</label>
                    <input type="password" class="form-control" id="exampleInputPassword1" />
                </div>
                <router-link to="/ijazah">

                    <button type="submit" class="btn btn-primary w-100">Login</button>
                </router-link>
            </form>
        </div>
    </div>
</template>

<script>
export default {
    name: "LoginComp"
}
</script>