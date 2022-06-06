<template>
    <div id = "daojishi">
        <div class = "miaosha" style="width: 90%;">
            <div class = "miaosha_img">
                <div class ="miaosha_img_place">
                    <img src = "">
                </div>
                <div class = "daojishi">
                    <div id = "day" class = "daycss">{{day}}</div>
                    <span class = "daojishi_font">天</span>
                    <div id = "hour" class = "hourcss">{{hour}}</div>
                    <span  class = "daojishi_font">时</span>
                    <div id = "minu" class = "minucss">{{minu}}</div>
                    <span  class = "daojishi_font">分</span>
                    <div id = "second" class = "secondcss">{{second}}</div>
                    <span  class = "daojishi_font">秒</span>
<!--                    <script src = "../js/daojishi.js"></script>-->
                </div>
            </div>
            <div class = "list">
                <div class = "list_content">
                    <button class = "list_button_left" @click = "turnleft()"><span class = "list_button_color" style = "left:-3px">⇦</span></button>
                    <div class = "slider_list">
                        <div id = "slider_list" class = "slider_list_div">
                            <!--<a>
                                <div>
                                    <img src = "">
                                </div>
                                <h3></h3>
                                <div>
                                    <div>
                                        <span>1</span>
                                    </div>
                                </div>
                            </a>-->
<!--                            <script src = ../js/list_auto_div.js></script>-->
                            <router-link :to="'/goodsinfo/'+goods.goodsid" v-for="(goods,index) in goodsinfo" :key="goods.goodsid" class="a_audiv">
                                <div class="div1_audiv">
                                    <img :src="'goods'+(index % 5)+'.jpg'" style="width: 100%;height: 100%"/>
                                </div>
                                <h3 class="h3_audiv">{{goods.goodsname}}</h3>
                                <div class="div2_audiv">
                                    <span class="span_audiv">￥ {{goods.goodsprice}}</span>
                                </div>
                            </router-link>
                        </div>
                    </div>
                    <button class = "list_button_right" @click = "turnright()"><span class = "list_button_color" style = "right:-3px">⇨</span></button>
<!--                    <script src = "../js/list_slider.js"></script>-->
                </div>
            </div>
        </div>
    </div>
</template>

<script>
    import {mapState} from "vuex";

    export default {
        name: "",
        data(){
          return{
              day:1,
              hour:0,
              minu:0,
              second:0,
              time:1000000,
              translatex:0,
          }
        },
        computed:{
          ...mapState({
              goodsinfo:state => state.user.allgoods
          })
        },
        mounted(){
            this.timer = setInterval(this.countdown, 1000);
        },
        methods:{
            countdown:function () {
                if (this.time >= 0) {
                    let day = parseInt(this.time / 1000000);
                    let hour = parseInt(this.time % 1000000 / 10000);
                    let minu = parseInt(this.time % 10000 / 100);
                    let second = (this.time % 100);
                    if (day > 10) {
                        this.day = day;
                    } else this.day = 0 + day;
                    if (hour > 10) {
                        this.hour = hour;
                    } else this.hour = 0 + hour;
                    if (minu > 10) {
                        this.minu = minu;
                    } else this.minu = 0 + minu;
                    if (second > 10) {
                        this.second = second;
                    } else this.second = 0 + second;
                    //时间自减
                    if (this.time % 1000000 == 0) {
                        this.time = this.time - 1000000 + 235959;
                    } else if (this.time % 10000 == 0) {
                        this.time = this.time - 10000 + 5959;
                    } else if (this.time % 100 == 0) {
                        this.time = this.time - 100 + 59;
                    } else {
                        this.time = this.time - 1;
                    }
                }
            },
            turnleft:function() {
                let weiyi = this;
                var myelement = document.getElementById("slider_list");
                this.gettranslatex();
                if(!document.getElementById("slider_list").style.transform || this.translatex==0){
                    weiyi = -2400;
                }
                weiyi = weiyi + 800;
                myelement.style.cssText = "opacity:1;transform:translate3d("+weiyi+"px,0px,0px);transition:transform 500ms ease-in-out 0s;display:block";
            },
            turnright:function () {
                let weiyi = this;
                var myelement = document.getElementById("slider_list");
                this.gettranslatex();
                if(this.translatex == -800){
                    weiyi = -1600;
                }else{
                    weiyi = 0;
                    weiyi = weiyi - 800;
                }
                myelement.style.cssText = "opacity:1;transform:translate3d("+weiyi+"px,0px,0px);transition:transform 500ms ease-in-out 0s;display:block";
            },
            gettranslatex:function (){
                var myelement = document.getElementById("slider_list");
                let translates = document.defaultView.getComputedStyle(document.getElementById('slider_list'),null).transform;
                this.translatex = parseFloat(translates.substring(7).split(',')[4]);
            },
        },
        beforeDestroy() {
            clearInterval(this.timer);
        }
    }
</script>

<style scoped>
    #daojishi{
        background-color:#fff;
    }

    .miaosha{
        padding:0px 5px 0px 5px;
        height:260px;
        position:relative;
        overflow:hidden;
    }

    .miaosha_img{
        position:absolute;
        float:left;
        margin-left:auto;
        margin-right:auto;
        width:20%;
        height:100%;
    }

    .miaosha_img_place{
        position:absolute;
        margin-top:	5%;
        margin-left:auto;
        margin-right:auto;
        width:190px;
        height:50%;
    }

    .daojishi{
        position:absolute;
        top:10%;
        margin:0 auto;
        background-color:red;
        border:1px solid red;
    }

    .daycss{
        display:inline;
        background-color:#fff;
        font-size:16px;
        font-weight:bold;
        border:none;
    }

    .hourcss{
        display:inline;
        background-color:#fff;
        font-size:16px;
        font-weight:bold;
        border:none;
    }

    .minucss{
        display:inline;
        background-color:#fff;
        font-size:16px;
        font-weight:bold;
        border:none;
    }

    .secondcss{
        display:inline;
        background-color:#fff;
        font-size:16px;
        font-weight:bold;
        border:none;
    }

    .daojishi_font{
        font-size:16px;
        color:white;
    }

    .list{
        position:absolute;
        width:80%;
        height:100%;
        right:0;
        background-color:#f4f4f4;
    }

    .list_content{
        width:100%;
        height:100%;
        float:right;
        background-color:#fff;
        overflow:hidden;
    }

    .list_button_left{
        position:absolute;
        top:50%;
        margin: -10px auto auto;
        background-color:#9f9f9f;
        opacity: 0.3;
        z-index:2;
        border:none;
        outline:none;
        border-top-right-radius: 18px;
        border-bottom-right-radius: 18px;
        left:-3px;
    }

    .list_button_right{
        position:absolute;
        top:50%;
        margin: -10px auto auto;
        background-color:#9f9f9f;
        opacity: 0.3;
        z-index:2;
        border:none;
        outline:none;
        border-top-left-radius: 18px;
        border-bottom-left-radius: 18px;
        right: -3px;
    }

    .list_button_color{
        color:white;
    }

    .slider_list{
        display:block;
        overflow:hidden;
        height: 100%;
    }

    .slider_list_div{
        display:block;
        width:2400px;
        position:relative;
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