<template>
    <div>
        <div class="top-nav">
            <router-link to="/home">主页</router-link>
            <router-link to="/cart">购物车</router-link>
            <router-link to="/mycenter">个人中心</router-link>
            <a href="">设置</a>
        </div>
        <div class="cart-info">
            <div class="cart-overflow">
                <div>
                    <table class="cart-table" id="cart-table" >
                        <tr class="cart-tr">
                            <th class="cart-td">选择</th>
                            <th class="cart-td">商品</th>
                            <th class="cart-td">单价</th>
                            <th class="cart-td">数量</th>
                            <th class="cart-td">小计</th>
                            <th class="cart-td">操作</th>
                        </tr>
<!--                        {{this.ci.goodsinfo[0].goodsname}}-->
<!--                        {{this.ci.cartinfo.length}}-->
                        <tr class="cart-tr" v-for="(cartinfoitem,index) in cartinfo" :key="index">
                            <td class="cart-td">
                                <input type="checkbox" @click="totalmoney()">
                            </td>
                            <td class="cart-td">
                                {{goodsinfo[index].goodsname}}
                            </td>
                            <td class="cart-td" id="price<%=num%>">
                                {{goodsinfo[index].goodsprice}}
                            </td>
                            <td class="cart-td">
                                <button @click="minu(index)">-</button>
                                <label>
                                    <input type="text" value="" :id="'inputnum'+index" style="text-align: center;width: 50px;" v-model="ci.cartinfo[index].num">
                                </label>
                                <button @click="add(index)">+</button>
                            </td>
                            <td class="cart-td" id="total-price<%=num%>">
                                <span id="total_initial" @change="totalmoney">{{ci.goodsinfo[index].goodsprice * ci.cartinfo[index].num}}</span>
                            </td>
                            <td class="cart-td">
                                <button class="link" style="background-color:#ff4757;vertical-align:middle" @click="deletegoods(index)">
                                    <span>删除</span>
                                </button>
                            </td>
                        </tr>
                    </table>
                </div>
            </div>
        </div>
        <div class="total-price">
            <table class="cart-table">
                <tr>
                    <td class="cart-td"><label><input id="allcheck" type="checkbox" @click="allcheck()"></label></td>
                    <td class="cart-td"></td>
                    <td class="cart-td"></td>
                    <td class="cart-td"></td>
                    <td class="cart-td" id="final-price">
                        <span>合计：</span>
                        <span id="money">{{ finaltotal }}</span>
                    </td>
                    <td class="cart-td">
                        <button class="link" style="vertical-align:middle" @click="createorder()"><span>去结算</span>
                        </button>
                    </td>
                </tr>
            </table>
        </div>
<!--        <button @click="show">show</button>-->
    </div>
</template>

<script>
    import {add,minus,total,finaltotal} from "@/pages/Cart/js/cart";
    import {mapMutations, mapState} from "vuex";
    import request from "@/api/request";
    export default {
        data(){
            return{
                finaltotal:0,
            }
        },
        mounted() {
            this.$store.dispatch("getcartinfo",localStorage.getItem("token"));
            this.$store.dispatch("getshopaddress", localStorage.getItem("token"));
        },
        computed:{
            ...mapState({
                ci:state => state.cart.cartinfo,
                cartinfo:state => state.cart.cartinfo.cartinfo,
                goodsinfo:state => state.cart.cartinfo.goodsinfo,
                shopaddressinfo: state => state.user.shopaddressinfo,
            }),
        },
        methods:{
            totalmoney:function (){
                let sum = 0;
                let table = document.getElementById("cart-table");
                for(let i=1;i<table.rows.length;i++){
                    if(table.rows[i].cells[0].getElementsByTagName("input")[0].checked){
                        sum += this.ci.goodsinfo[i-1].goodsprice * this.ci.cartinfo[i-1].num;
                    }
                }
                this.finaltotal = sum;
            },
            show:function () {
                console.log(this.goodsinfo);
            },
            add:function (tr) {
                this.ci.cartinfo[tr].num += 1;
            },
            minu:function (tr) {
                if(this.ci.cartinfo[tr].num > 0){
                    this.ci.cartinfo[tr].num -= 1;
                }
            },
            allcheck:function () {
                let table = document.getElementById("cart-table");
                if(document.getElementById("allcheck").checked){
                    for(let i=1;i<table.rows.length;i++) {
                        table.rows[i].cells[0].getElementsByTagName("input")[0].checked = true;
                    }
                }else{
                    for(let i=1;i<table.rows.length;i++) {
                        table.rows[i].cells[0].getElementsByTagName("input")[0].checked = false;
                    }
                }
                this.totalmoney();
            },
            deletegoods:function (num) {
                this.$store.dispatch("deletegoodsincart",this.ci.cartinfo[num].cartid).then(result => alert("删除成功"));
            },
            createorder:function () {
                // alert(this.shopaddressinfo.length);
                var goodsid = [];
                var num = [];
                let count = 0;
                if (this.shopaddressinfo.length == 1){
                    var getsaid = this.shopaddressinfo[0].said;
                    // console.log(getsaid);
                }
                let table = document.getElementById("cart-table");
                for(let i=1;i<table.rows.length;i++) {
                    if(table.rows[i].cells[0].getElementsByTagName("input")[0].checked){
                        // const goodsname = this.goodsinfo[i-1].goodsname,odnum = this.cartinfo[i-1].num,
                        //     sumprice = (this.cartinfo[i-1].num * this.goodsinfo[i-1].goodsprice),
                        //     buyerid = this.cartinfo[i-1].buyerid;
                        // this.$store.dispatch("insertorder",{goodsname,odnum,sumprice,buyerid}).then(result => {this.deletegoods((i-1))});
                        goodsid[count] = this.goodsinfo[i-1].goodsid;
                        num[count] = this.cartinfo[i-1].num;
                        count++;
                    }
                }
                const buyerid = this.cartinfo[0].buyerid,said = getsaid;
                console.log({buyerid,goodsid,said,num});
                this.$store.dispatch("insertordernew",{buyerid,goodsid,said,num}).then(result => {
                    for(let i=1;i<table.rows.length;i++) {
                        if (table.rows[i].cells[0].getElementsByTagName("input")[0].checked) {
                            this.$store.dispatch("deletegoodsincart", this.ci.cartinfo[i - 1].cartid)
                        }
                    }
                });
            }
        }
    }
</script>

<style>
    /*顶部导航栏*/
    .top-nav {
        border-radius:10px;
        list-style-type: none;
        margin: 0;
        padding: 0;
        overflow: hidden;
        background-color: #0a3d62;
        width:100%;
    }

    .top-nav a {
        float: left;
        display: block;
        color: white;
        text-align: center;
        padding: 14px 16px;
        text-decoration: none;
    }

    .top-nav a:hover {
        background-color: #3c6382;
    }

    /*购物车*/
    .total-price{
        height: 75px;
        width: 80%;
        margin-left: 10%;
        background-color: #dfe4ea;
        border-radius: 10px;
    }

    .cart-info{
        height: 600px;
        width: 80%;
        margin: 25px auto;
        background-color: #f1f2f6;
        border-radius: 10px;
    }

    .cart-overflow{
        height:600px;
        overflow-y: auto;
    }

    /*购物车商品表*/
    .cart-table{
        border-collapse: collapse;
        width: 100%;
    }

    .cart-td{
        text-align: center;
        padding: 30px;
    }

    .cart-tr:nth-child(even){
        background-color: white;
    }


    .changemyinfo{
        border-radius: 10px;
        position: absolute;
        width:400px;
        height: 400px;
        left: 40%;
        top: 50%;
        background-color: white;
        box-shadow: 0 0 20px grey;
    }

    .closebutton{
        position: absolute;
        right: 8px;
        top: 5px;
        border:none;
        background-color: white;
        border-radius: 10px;
        width:26px;
        height: 20px;
        font-size: 20px;
        font-weight: bold;
        color: #ced6e0;
    }
    .closebutton:hover{
        color: #95afc0;
    }

    .textfield{
        width: 100%;
        padding: 12px 20px;
        margin: 8px 0;
        box-sizing: border-box;
        border: none;
        outline: none;
        border-bottom: 2px solid #82ccdd;
        font-size: 15px;
    }

    .selectbox{
        width:100%;
        padding: 12px 20px;
        margin: 8px 0;
        box-sizing: border-box;
        border: none;
        outline: none;
        border-bottom: 2px solid #82ccdd;
        font-size: 15px;
    }

    .formdiv{
        margin-top:40px;
        margin-left: 20px;
        margin-right: 20px;
    }

    .changeinfospan{
        font-size: 20px;
        font-weight: bold;
        color: #535c68;
    }

    .changeinfoinput{
        position: absolute;
        left:90%;
        top:92%;
        transform:translate(-90%,-92%);
        vertical-align:middle;
    }
</style>