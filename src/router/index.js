import { createWebHistory, createRouter } from "vue-router";
import AwalPage from "../views/AwalPage.vue";
import LoginPage from "../views/LoginPage.vue";
import IjazahPage from "../views/IjazahPage.vue";
import AdminPage from "../views/AdminPage.vue";
import AdminnilaiPage from "../views/AdminnilaiPage.vue";
import NilaiPage from "../views/NilaiPage.vue";

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
    path: "/ijazah",
    name: "IjazahPage",
    component: IjazahPage,
  },
  {
    path: "/admin",
    name: "AdminPage",
    component: AdminPage,
  },
  {
    path: "/adminnilai",
    name: "AdminnilaiPage",
    component: AdminnilaiPage,
  },
  {
    path: "/nilai",
    name: "NilaiPage",
    component: NilaiPage,
  },
];

const router = createRouter({
  history: createWebHistory(),
  routes,
});

export default router;
