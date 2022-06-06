import {reqsearchgoods} from "@/api/search";

const state ={
    searchgoods:[],
};
const mutations = {
    SEARCHGOODS(state,searchgoods){
        state.searchgoods = searchgoods;
    }
};
const actions = {
    async searchgoods({commit},str){
        let result = await reqsearchgoods(str);
        if(result.status == 200){
            commit("SEARCHGOODS",result.data);
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
