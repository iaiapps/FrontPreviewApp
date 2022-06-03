import { createApp } from "vue";
import App from "./App.vue";
import router from "./router";

// css
import "bootstrap/dist/css/bootstrap.min.css";
import "bootstrap";
import "./assets/css/app.css";

createApp(App).use(router).mount("#app");
