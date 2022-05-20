<template>
    <nav class="navbar navbar-dark bg-primary">
        <div class="container">
            <ul class="navbar-nav">
                <a class="navbar-brand" href="#">
                    <h3 class="m-0">Preview App</h3>
                </a>
            </ul>
            <div>
                <router-link to="/">
                    <a class="btn btn-light" href="#">Logout</a>
                </router-link>
            </div>
        </div>
    </nav>
</template>

<script>
export default {
    name: 'HeaderComp',
}
</script>