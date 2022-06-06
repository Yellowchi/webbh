<template>
    <div id="shortcut"><!-- top bar -->
        <div class="w"><!-- mycity -->
            <ul class="normal_ul lf">
                <li class="normal_li shortcut_btn dropdown">
                    <a to="javascript:void(0)">
                        <i></i>
                        <span data-id="">上海</span>
                    </a>
                    <div class="layer border" style="left:auto;">
                        <div class="dropdown-content">
                            <div class="dropdown-content-list">
                                <div class="item">
                                    <a data-id="1" to="javascript:void(0)">北京</a>
                                </div>
                                <div class="item">
                                    <a data-id="2" to="javascript:void(0)" class="selected">上海</a>
                                </div>
                                <div class="item">
                                    <a data-id="3" to="javascript:void(0)">天津</a>
                                </div>
                                <div class="item">
                                    <a data-id="4" to="javascript:void(0)">昆明</a>
                                </div>
                                <div class="item">
                                    <a data-id="5" to="javascript:void(0)">长春</a>
                                </div>
                                <div class="item">
                                    <a data-id="6" to="javascript:void(0)"></a>
                                </div>
                                <div class="item">
                                    <a data-id="" to="javascript:void(0)"></a>
                                </div>
                            </div>
                        </div>
                    </div>
                </li>
            </ul>
            <ul class="normal_ul rf">
                <li id="load" class="normal_li lf" v-if="loadornot()"><!-- load&register -->
                    <router-link to="/mycenter" >您好,{{username}}</router-link>
                </li>
                <li class="normal_li lf" v-else>
                    <router-link to="/register">点我注册</router-link>
                    <span>|</span>
                    <router-link to="/login">点我登录</router-link>
                </li>
                <li class="normal_li lf">|</li>
                <li id="myorder" class="normal_li lf"> <!-- order from -->
                    <router-link id="myorder_a" to="/cart">我的购物车</router-link>
                </li>
                <li class="normal_li lf">|</li>
                <li id="selfcenter" class="normal_li lf"><!-- selfcenter -->
                    <router-link id="selfcenter_a" to="/mycenter">个人中心</router-link>
                </li>
                <li class="normal_li lf">|</li>
                <li id="service" class="normal_li lf"><!-- service -->
                    <router-link id="service_a" to="">SERVICE</router-link>
                </li>
            </ul>
        </div>
    </div>
</template>

<script>
    export default {
        name: "",
        data(){
            return{
                username:localStorage.getItem("token"),
            }
        },
        methods:{
            loadornot(){
                if(localStorage.getItem("token") != null){
                    return true;
                }else{
                    return false;
                }
            }
        }
    }
</script>

<style scoped>
    .normal_ul{
        list-style-type:none;
        display: block;
        list-style-type: disc;
        margin-block-start: 1em;
        margin-block-end: 1em;
        margin-inline-start: 0px;
        margin-inline-end: 0px;
        padding-inline-start: 40px;
        overflow:hidden;
    }

    .normal_li{
        display: list-item;
        text-align: -webkit-match-parent;
        list-style-type:none;
    }

    #shortcut{
        border-bottom: 1px solid #ddd;
        background-color: #e3e4e5;
    }

    #shortcut .w{
        height:30px;
        color: #999;
        top:0px;
    }

    .lf{
        float:left;
    }

    .rf{
        float:right;
    }

    li a,shortcut_btn {
        overflow:hidden;
        color: black;
        text-align: center;
        text-decoration: none;
        z-index:1;
    }

    li a:hover {
        background-color: #f4f4f4;
    }

    #shortcut.layer{
        top:30px;
    }

    #shortcut.border{
        left:0px;
        width:300px;
        padding:10px;
    }

    li .dropdown {
        position: relative;
        display: inline-block;
    }

    .dropdown-content {
        display: none;
        position: absolute;
        background-color: #f9f9f9;
        border:1px solid;
        box-shadow: 1px 2px 1px rgb(0,0,0.9);
        z-index: 22;
    }

    .dropdow-content-list{
        overflow:hidden;
    }

    .dropdown:hover .dropdown-content {
        display: block;
    }

    .dropdown-content a:hover {
        background-color: green;
    }

    .item{
        float: left;
        width: 60px;
        padding: 2px 0;
    }

    a.selected{
        background-color: #f10215;
        color: #fff;
    }
</style>