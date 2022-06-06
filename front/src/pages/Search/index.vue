<template>
    <div id = "items" class = "goodsitem_place">
        <router-link :to="'/goodsinfo/'+goods.goodsid" v-for="(goods,index) in searchgoods" :key="goods.goodsid" class="a_audiv">
            <div class="div1_audiv">
                <img :src="'goods'+(index % 5)+'.jpg'" style="width: 100%;height: 100%"/>
            </div>
            <h3 class="h3_audiv">{{goods.goodsname}}</h3>
            <div class="div2_audiv">
                <span class="span_audiv">￥ {{goods.goodsprice}}</span>
            </div>
        </router-link>
    </div>
</template>

<script>
    import {mapState} from "_vuex@3.6.2@vuex";

    export default {
        name: "",
        mounted() {
            this.$store.dispatch("searchgoods",this.$route.query.searchinfo)
        },
        computed:{
            ...mapState({
                searchgoods:state => state.search.searchgoods,
            })
        }
    }
</script>

<style scoped>
    .goodsitem_place{
        position: relative;
        margin:auto;
        width:1200px;
    }

    .a_audiv{
        position:relative;
        overflow:hidden;
        background-color:white;
        height:260px;
        width:200px;
        display:inline-block;
        text-decoration:none;
        float:left;
    }
    .div1_audiv{
        display:block;
        overflow:hidden;
        height:60%;
        width:100%;
        position:absolute;
        margin:auto;
    }
    .h3_audiv{
        position:absolute;
        overflow:hidden;
        height:10%;
        width:100%;
        bottom:30%;
        text-overflow:ellipsis;
        margin:auto;
        white-space:nowrap;
    }
    .div2_audiv{
        position:absolute;
        height:30%;
        margin:auto;
        bottom:0px;
        width:100%;
    }
    .span_audiv{
        font-style:normal;
        margin:auto;
        overflow:hidden;
        margin-left:auto;
        margin-right:auto;
        left:40%;
        position:absolute;
    }
</style>