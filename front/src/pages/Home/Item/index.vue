<template>
    <div class = "fs" style = "z-index:9;"><!-- itemize -->
        <div class = "fs_inner"><!-- sort table -->
            <div class = "fs_itemlist">
                <ul class = "normal_ul">
                    <li class = "normal_li"><a href = "search.jsp?goodskind=">服装</a>
                        <span>/</span>
                        <a href = "search.jsp?goodskind=">男装</a>
                        <span>/</span>
                        <a href = "search.jsp?goodskind=">女装</a>
                    </li>
                    <li class = "normal_li"><router-link to="search?sesarchinfo=数码">数码</router-link>
                        <span>/</span>
                        <router-link to="search?searchinfo=手机">手机</router-link>
                        <span>/</span>
                        <a href = "search.jsp?goodskind=">笔记本电脑</a>
                        <span>/</span>
                        <a href = "search.jsp?goodskind=">相机</a>
                    </li>
                    <li class = "normal_li"><a href = "search.jsp?goodskind=">食品</a>
                        <span>/</span>
                        <a href = "search.jsp?goodskind=">蔬菜</a>
                        <span>/</span>
                        <a href = "search.jsp?goodskind=">水果</a>
                    </li>
                </ul>
            </div>
        </div>
        <div class = "fs_ad"><!-- ad -->
            <div id = "adslipe" class = "slipe">
                <div class = "slipeaction">
                    <Carousel autoplay v-model="value2" loop>
                        <CarouselItem>
                            <div class="demo-carousel">
                                    <img src="@/public/webimg/cuxiao1.jpg" style="width: 100%;height: 100%">
                            </div>
                        </CarouselItem>
                        <CarouselItem>
                            <div class="demo-carousel">
                                    <img src="@/public/webimg/cuxiao2.jpg">
                            </div>
                        </CarouselItem>
                        <CarouselItem>
                            <div class="demo-carousel">
                                    <img src="@/public/webimg/cuxiao3.jpg">
                            </div>
                        </CarouselItem>
                        <CarouselItem>
                            <div class="demo-carousel">
                                    <img src="@/public/webimg/cuxiao4.jpg">
                            </div>
                        </CarouselItem>
                    </Carousel>
<!--                    <button class = "list_button_left" @click = "slipeleft()"><span class = "list_button_color" style = "left:-3px">⇦</span></button>-->
<!--                    <button class = "list_button_right" @click = "sliperight()"><span class = "list_button_color" style = "right:-3px">⇨</span></button>-->
<!--                    <div class = "slipeaction_place">-->
<!--                        <div class = "point">&lt;!&ndash; 导航按钮 &ndash;&gt;-->
<!--                            <div>-->
<!--                                <span id = "point_span" class = "point_place">-->
<!--                                    <a id = "1" href = "#" @click="change(this.id)">-->
<!--                                        <img id = "img1" src = "@/public/webimg/button-view-active.gif">-->
<!--                                    </a>-->
<!--                                    <a id = "2" href = "#" @click="change(this.id)">-->
<!--                                        <img id = "img2" src = "@/public/webimg/button-view.gif">-->
<!--                                    </a>-->
<!--                                    <a id = "3" href = "#" @click="change(this.id)">-->
<!--                                        <img id = "img3" src = "@/public/webimg/button-view.gif">-->
<!--                                    </a>-->
<!--                                    <a id = "4" href = "#" @click="change(this.id)">-->
<!--                                        <img id = "img4" src = "@/public/webimg/button-view.gif">-->
<!--                                    </a>-->
<!--                                    <a id = "5" href = "#" @click="change(this.id)">-->
<!--                                        <img id = "img5" src = "@/public/webimg/button-view.gif">-->
<!--                                    </a>-->
<!--                                </span>-->
<!--                            </div>-->
<!--                        </div>-->
<!--                        <div style = "height: 100%;">&lt;!&ndash; 图片 &ndash;&gt;-->
<!--                            <div id = "images" class = "images">-->
<!--                                <ul id = "images_ul" class = "images_ul">-->
<!--                                    <li id = "li1" class = "images_li"><a>1<img src =""></a></li>-->
<!--                                    <li id = "li2" class = "images_li"><a>2<img src =""></a></li>-->
<!--                                    <li id = "li3" class = "images_li"><a>3<img src =""></a></li>-->
<!--                                    <li id = "li4" class = "images_li"><a>4<img src =""></a></li>-->
<!--                                    <li id = "li5" class = "images_li"><a>5<img src =""></a></li>-->
<!--                                </ul>-->
<!--                            </div>-->
<!--                        </div>-->
<!--                    </div>-->
                </div>
            </div>
        </div>
        <div class = "fs_self"><!-- self info -->
            <div id = "selfinfo">
                <div class = "selfhead">
                    <a href = "load.jsp" class = "selfheadimg">
                        <img src = "">
                    </a>
                </div>
                <div class = "selfinfo_loadorregister">
                    <span>点击头像登录|</span>
                    <a href = "register.jsp" class = "selfinfo_a">注册</a>
                </div>
                <div>
                    <div class = "stayplace" style="top:10px"></div>
                    <div class = "selfbutton_div">
                        <router-link to="/mycenter" class = "selfinfo_a"><button>我的信息</button></router-link>
                    </div>
                    <div class = "stayplace"></div>
                    <div class = "selfbutton_div">
                        <router-link to="/cart" class = "selfinfo_a"><button>我的购物车</button></router-link>
                    </div>
                    <div class = "stayplace"></div>
                    <div class = "selfbutton_div">
                        <router-link to="/mycenter" class = "selfinfo_a"><button>我的收货地址</button></router-link>
                    </div>
                </div>
            </div>
        </div>
    </div>
</template>

<script>
    export default {
        name: "",
        data(){
            return{
                value2:0,
            }
        }
        // methods:{
        //     change:function (num) {
        //         change(num);
        //     },
        //     changeimg:function (num) {
        //         changeimg(num)
        //     },
        //     slipeleft:function(){
        //         slipeleft()
        //     },
        //     sliperight:function (){
        //         sliperight()
        //     },
        //     gettranslatex_slipe,
        // }
    }
</script>

<style scoped>
    .fs{
        margin: 5px;
        height:480px;
    }

    .fs_inner{
        z-index:1;
        height:480px;
        background-color:#f4f4f4;
        float:left;
        width:25%;
    }

    .fs_itemlist{
        margin:0px;
        position:relative;
        z-index:3;
    }

    .fs_ad{
        width:55%;
        height:480px;
        float:left;
        margin-right:10px;
    }

    .slipe{
        position: relative;
        height: 470px;
        margin-top: 10px;
        overflow: hidden;
    }

    .slipeaction{
        animation: skeletonShow .3s ease both;
        height: 100%;
        width: 100%;
    }

    .slipeaction_place{
        position: absolute;
        height:100%;
    }

    .images{
        height: 100%;
    }

    .images_ul{
        width: 3600px;
        height: 100%;
        background: darkgray;
        opacity: 1;
        transition: none 0s ease 0s ;
        padding-inline-start: 0px;
        /*animation:change 10s linear 0s infinite normal;*/   /*动画元素，持续时间，速度，延迟时间，重复次数，是否往返*/
    }

    .images_ul:hover{
        /*animation-play-state: paused;*/
    }

    .images_ul:hover .images_li{
        opacity: 0.5;   /*透明度，显示父元素颜色*/
    }

    .images_li:hover{
        opacity: 1;
    }

    .images_li{
        width: 720px;height: 100%;
        list-style: none;
        float: left;
        border:1px solid black;
        background-color: brown;
        box-sizing: border-box;
    }

    @keyframes change{
        from{margin-left: 0;}
        to{margin-left:-1200px ;}
    }

    .point{
        position: absolute;
        width:100px;
        height: 20px;
        bottom: 10px;
        z-index: 3;
    }

    .point_place{
        padding-left: 10px;
    }

    .fs.self{
        position: relative;
        float: right;
        width: 20%;
        height: 480px;
        z-index: 1;
    }

    #selfinfo{
        margin-top:10px;
        background-color:#fff;
        overflow:hidden;
    }

    .selfhead{
        width:50px;
        height:50px;
        margin:0 auto;
    }

    .selfheadimg{
        border: 2px solid #fff;
        border-radius: 50%;
        overflow: hidden;
    }

    .selfinfo_loadorregister{
        display:inline;
        float:left;
    }

    .selfinfo_a{
        overflow:hidden;
        color: black;
        text-align: center;
        text-decoration: none;
        z-index:1;
    }

    .selfbutton_div{
        padding-top:5px;
        padding-top:5px;
        margin:0 auto;
    }

    .stayplace{
        height:20px;
    }

    #selfinfo button{
        border-radius: 25px;
        background-color:red;
        color:#fff;
    }
</style>