import Vue from "vue";
import Vuex from "vuex";

Vue.use(Vuex);

import user from "./User"
import shopaddress from "./Shopaddress"
import goods from "./Goods"
import cart from "./Cart"
import search from "./Search"
import order from "./Order"

export default new Vuex.Store({
    modules:{
        user,
        shopaddress,
        goods,
        cart,
        search,
        order,
    }
})