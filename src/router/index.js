import { createWebHistory, createRouter } from "vue-router";
// import AwalPage from "../views/AwalPage.vue";
import LoginPage from "../views/LoginPage.vue";
import IjazahPage from "../views/IjazahPage.vue";
import AdminPage from "../views/AdminPage.vue";
import AdminnilaiPage from "../views/AdminnilaiPage.vue";
import NilaiPage from "../views/NilaiPage.vue";

const routes = [
  // {
  //   path: "/awal",
  //   name: "AwalPage",
  //   component: AwalPage,
  // },
  {
    path: "/",
    name: "LoginPage",
    component: LoginPage,
  },
  {
    path: "/admin",
    name: "AdminPage",
    component: AdminPage,
  },
  {
    path: "/ijazah/:id",
    name: "IjazahPage",
    component: IjazahPage,
  },
  {
    path: "/adminnilai",
    name: "AdminnilaiPage",
    component: AdminnilaiPage,
  },
  {
    path: "/nilai/:id",
    name: "NilaiPage",
    component: NilaiPage,
  },
];

const router = createRouter({
  history: createWebHistory(),
  routes,
});

export default router;
