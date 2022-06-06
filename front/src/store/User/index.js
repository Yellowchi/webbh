import {reqgetallgoods, reqlogin, reqregister} from "@/api/user";
import {reqgetuserinfo,requpdateuserinfo,reqgetid,reqgetgoodsinfo,reqaddgoodsinfo} from "@/api/user";
import {reqgetshopaddress} from "@/api/address";

const state = {
    userinfo:[],
    shopaddressinfo:[],
    id:[],
    goodsinfo:[],
    allgoods:[],
}
const mutations = {
    USERINFO(state,userinfo){
        state.userinfo = userinfo;
    },
    SHOPADDRESS(state,shopaddressinfo){
        state.shopaddressinfo = shopaddressinfo;
    },
    GETID(state,id){
        state.id = id;
    },
    GOODSINFO(state,goodsinfo){
        state.goodsinfo = goodsinfo;
    },
    ALLGOODS(state,allgoods){
        state.allgoods = allgoods;
    }
}
const actions = {
    async login({commit},data){
        let result = await reqlogin(data);
        if (result.data === true){
            localStorage.setItem("token",data.username);
            return true;
        }else{
            alert(result.data);
            return false;
        }
    },
    async register({commit},data){
        let result = await reqregister(data);
        if(result.data === true){
            return true;
        }else{
            alert(result.data);
            return false;
        }
    },
    async getuserinfo({commit},id){
        let result = await reqgetuserinfo(id);
        if(result.status == 200){
            commit("USERINFO",result.data);
        }
    },
    async getshopaddress({commit},id){
        let result = await reqgetshopaddress(id);
        if(result.status == 200){
            commit("SHOPADDRESS",result.data);
        }
    },
    async updateuserinfo({commit},data){
        let result = await requpdateuserinfo(data);
        if(result.status == 200){
            return true;
        }else {
            return false;
        }
    },
    async getid({commit},id){
        let result = await reqgetid(id);
        if(result.status == 200){
            commit("GETID",result.data);
        }else{
            alert("获取失败");
        }
    },
    async getgoodsinfo({commit},id){
        let result = await reqgetgoodsinfo(id);
        if(result.status == 200){
            commit("GOODSINFO",result.data);
        }else{
            return false;
        }
    },
    async addgoodsinfo({commit},data){
        let result = await reqaddgoodsinfo(data);
        if(result.status == 200){
            return true;
        }else {
            return false;
        }
    },
    async getallgoods({commit}){
        let result = await reqgetallgoods();
        if(result.status == 200){
            commit("ALLGOODS",result.data);
        }
    }
}
const getters = {}

export default {
    state,
    mutations,
    actions,
    getters
}