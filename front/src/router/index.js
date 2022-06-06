//引用
import Vue from "vue";
import VueRouter from "vue-router";
//使用
Vue.use(VueRouter);

import home from "@/pages/Home"
import Login from "@/pages/Login"
import Register from "@/pages/Register"
import Search from "@/pages/Search"
import Mycenter from "@/pages/Mycenter"
import Cart from "@/pages/Cart"
import Goodsinfo from "@/pages/Goodsinfo"

let router = new VueRouter({
    routes: [{
        path: "/home",
        component: home,
        meta: {show: true}
    },
    {
        path: "/login",
        component: Login,
        meta: {show: false}
    },
    {
        path: "/register",
        component: Register,
        meta: {show: false}
    },
    {
        path: "/search",
        component: Search,
        meta: {show: true}
    },
    {
        path: "/mycenter",
        component: Mycenter,
        meta: {show: false}
    },
    {
        path:"/cart",
        component:Cart,
        meta:{show: false}
    },
    {
        path:"/goodsinfo/:goodsid",
        component:Goodsinfo,
        meta:{show : true}
    },
    {
        path: "*",
        redirect: "/home"
    }]
})

export default router;
//路由守卫
router.beforeEach((to, from, next) => {
    next();
    if (to.path === "/login" && localStorage.getItem("token") != null) {
        next("/home")
    }
})