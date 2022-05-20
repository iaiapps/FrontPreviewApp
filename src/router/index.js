import { createWebHistory, createRouter } from "vue-router";
import AwalPage from "../views/AwalPage.vue";
import LoginPage from "../views/LoginPage.vue";
import IjazahPage from "../views/IjazahPage.vue";
import AdminPage from "../views/AdminPage.vue";

const routes = [
  {
    path: "/",
    name: "AwalPage",
    component: AwalPage,
  },
  {
    path: "/login",
    name: "LoginPage",
    component: LoginPage,
  },
  {
    path: "/admin",
    name: "AdminPage",
    component: AdminPage,
  },
  {
    path: "/ijazah",
    name: "IjazahPage",
    component: IjazahPage,
  },
];

const router = createRouter({
  history: createWebHistory(),
  routes,
});

export default router;
