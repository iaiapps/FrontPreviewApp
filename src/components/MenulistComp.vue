<template>
    <div class="col-12 col-lg-4 mb-5 mb-lg-0 me-auto">
        <div class="card p-3 mb-3">
            <h4 class="fw-bold">Admin</h4>
        </div>

        <div id="list-example" class="list-group fs-4">
            <router-link to="/admin" class="list-group-item list-group-item-action">
                Home
            </router-link>
            <router-link to="/adminnilai" class="list-group-item list-group-item-action">
                Nilai
            </router-link>

        </div>
    </div>
</template>

<script>
export default {
    name: "MenulistComp"
}
</script>