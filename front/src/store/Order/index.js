import {reqgetorders, reqgetordersnew, reqinsertorder, reqinsertordernew} from "@/api/order";

const state = {
    orderinfo:[],
    neworderinfo:{},
};
const mutations = {
    ORDERS(state,orderinfo){
        state.orderinfo = orderinfo;
    },
    ORDERSNEW(state,neworderinfo){
        state.neworderinfo = neworderinfo;
    }
};
const actions = {
    async insertorder({commit},data){
        console.log(data);
        let result = await reqinsertorder(data);
        if(result.status == 200){
            return true;
        }
    },
    async insertordernew({commit},data){
        let result = await reqinsertordernew(data);
        if (result.status == 200){
            return true;
        }
    },
    async getorders({commit},id){
        let result = await reqgetorders(id);
        if(result.status == 200){
            commit("ORDERS",result.data);
        }
    },
    async getordersnew({commit},id){
        let result = await reqgetordersnew(id);
        if(result.status == 200){
            commit("ORDERSNEW",result.data);
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