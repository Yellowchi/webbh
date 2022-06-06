import {requpdateshopaddress,reqdeleteshopaddress,reqinsertshopaddress} from "@/api/address"
const state = {};
const mutations = {};
const actions = {
    async updateshopaddress({commit},data){
        let result = await requpdateshopaddress(data);
        if(result.status == 200){
            return true;
        }else {
            return false;
        }
    },
    async deleteshopaddress({commit},id){
        let result = await reqdeleteshopaddress(id);
        if(result.status == 200){
            return true;
        }else {
            return false;
        }
    },
    async addshopaddress({commit},data){
        let result = await reqinsertshopaddress(data);
        if(result.status == 200){
            return true;
        }else {
            return false;
        }

    }
};
const getters = {};
export default {
    state,
    mutations,
    actions,
    getters
}