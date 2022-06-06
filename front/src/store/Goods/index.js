import {reqchangegoodsinfo, reqdeletegoodsinfo, reqgetgoodsinfobygoodsid} from "@/api/goods";
import {reqaddgoodsincart} from "@/api/cart";

const state = {
    goodsinfobygoodsid:[],
};
const mutations = {
    GOODSINFOBYGOODSID(state,goodsinfobygoodsid){
        state.goodsinfobygoodsid = goodsinfobygoodsid;
    }
};
const actions = {
    async changegoodsinfo({commit},data){
        let result = await reqchangegoodsinfo(data);
        if(result.status == 200){
            return true;
        }
    },
    async deletegoodsinfo({commit},id){
        let result = await reqdeletegoodsinfo(id);
        if(result.status == 200){
            return true;
        }
    },
    async getgoodsinfobygoodsid({commit},id){
        let result = await reqgetgoodsinfobygoodsid(id);
        if(result.status == 200){
            commit("GOODSINFOBYGOODSID",result.data);
            return true;
        }
    },
    async addgoodsincart({coimmit},data){
        let result = await reqaddgoodsincart(data);
        if(result.status == 200){
            return true;
        }else{
            return false;
        }
    },

};
const getters = {};
export default {
    state,
    mutations,
    actions,
    getters,
}