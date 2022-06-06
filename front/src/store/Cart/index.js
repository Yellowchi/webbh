import {reqgetcartinfo,reqdeletegoodsincart} from "@/api/cart";

const state ={
    cartinfo:{},
};
const mutations = {
    CARTINFO(state,cartinfo){
        state.cartinfo = cartinfo;
    }
};
const actions = {
    async getcartinfo({commit},id){
        let result = await reqgetcartinfo(id);
        if(result.status == 200){
            commit("CARTINFO",result.data)
            return true;
        }
    },
    async deletegoodsincart({commit},id){
        let result = await reqdeletegoodsincart(id);
        if(result.status == 200){
            return true;
        }
    }
};
const getters = {};
export default {
    state,
    mutations,
    actions,
    getters,
}