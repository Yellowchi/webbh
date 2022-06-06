<template>
    <div>
        <div class="item-inform">
            <div class="left">
                <img src="//img13.360buyimg.com/n1/s450x450_jfs/t1/220044/16/4049/94567/618e2ce6Ee73e9527/e1889a7e44be88c0.jpg"  />
            </div>
            <div class="right">
                <div class="sname">
                    <h3>{{gibg.goodsname}}</h3>
                </div>
                <div class="lsit">
                    <div class="price">
                        <dl>
                            <dt>促销价:</dt>
                            <dd><em>¥ </em><b class="nprice">{{ gibg.goodsprice }}</b></dd>
                        </dl>
                        <dl>
                            <dt>原价</dt>
                            <dd><em>¥</em><b class="tprice">{{ gibg.goodsprice }}</b></dd>
                        </dl>
                    </div>
                    <div class="address">
                        配送至
                        <select>
                            <option>北京</option>
                            <option>上</option>
                            <option>广</option>
                            <option>深</option>
                        </select>
                        <select>
                            <option>浦东新区</option>
                            <option>上</option>
                            <option>广</option>
                            <option>深</option>
                        </select>
                    </div>
                    <div class="sales">

                    </div>
                    <div class="biaodan">
                        <TABLE>
                            <TR style="line-height:30px;">
                                <TD>颜色</TD>
                                <TD ><input type="radio" name="color" value="blue" checked> 蓝色
                                    <input type="radio" name="color" value="green"> 绿色
                                    <input type="radio" name="color" value="red"> 红色</TD>
                            </TR>
                            <TR style="line-height:30px;">
                                <TD>型号</TD>
                                <TD ><input type="radio" name="model" value="one" checked>8+64G
                                    <input type="radio" name="model" value="two">8+128G
                                    <input type="radio" name="model" value="three">8+256G</TD>
                            </TR>
                            <TR style="line-height:30px;">
                                <TD>数量：</TD>
                                <TD><button id="reduce" @click="minunum()">-</button>
                                    <input type="text" id="text" @input="value=value.replace(/[^\d]/g,'')" value="1" size="5" name="goodsnum" v-model="num">
                                    <button id="plus" @click="addnum()">+</button></TD>
                            </TR>
                            <TR>
                                <TD colspan="2">
                                    <form>
                                        <button @click="add()">加入购物车</button>
                                    </form>
                                </TD>
                            </TR>
                        </TABLE>
                    </div>
                </div>
            </div>
            <div class="clear"></div>
        </div>
        <div class="introduce">

            <div class="inleft">
                <div class="mc">

                    <ul >
                        <div class="ti">
                            <h2>更多好货</h2>
                        </div>
                        <li class="first">
                            <div class="p-img">
                                <a href="#"> <img class="" src="//img14.360buyimg.com/n2/jfs/t1/125269/25/24432/83240/619c9a9aE64b50090/334a2e472aca1653.jpg"> </a>
                            </div>
                            <div class="p-name"><a href="#">
                                华为p50pro 新品手机 曜金黑 8G+256G
                            </a>
                            </div>
                            <div class="p-price"><strong>￥399.00</strong></div>
                        </li>
                        <li class="first">
                            <div class="p-img">
                                <a href="#"> <img class="" src="//img14.360buyimg.com/n2/jfs/t1/125269/25/24432/83240/619c9a9aE64b50090/334a2e472aca1653.jpg"> </a>
                            </div>
                            <div class="p-name"><a href="#">
                                华为p50pro 新品手机 曜金黑 8G+256G
                            </a>
                            </div>
                            <div class="p-price"><strong>￥399.00</strong></div>
                        </li>
                        <li class="first">
                            <div class="p-img">
                                <a href="#"> <img class="" src="//img14.360buyimg.com/n2/jfs/t1/125269/25/24432/83240/619c9a9aE64b50090/334a2e472aca1653.jpg"> </a>
                            </div>
                            <div class="p-name"><a href="#">
                                华为p50pro 新品手机 曜金黑 8G+256G
                            </a>
                            </div>
                            <div class="p-price"><strong>￥399.00</strong></div>
                        </li>
                        <li class="first">
                            <div class="p-img">
                                <a href="#"> <img class="" src="//img14.360buyimg.com/n2/jfs/t1/125269/25/24432/83240/619c9a9aE64b50090/334a2e472aca1653.jpg"> </a>
                            </div>
                            <div class="p-name"><a href="#">
                                华为p50pro 新品手机 曜金黑 8G+256G
                            </a>
                            </div>
                            <div class="p-price"><strong>￥399.00</strong></div>
                        </li>
                        <li class="first">
                            <div class="p-img">
                                <a href="#"> <img class="" src="//img14.360buyimg.com/n2/jfs/t1/125269/25/24432/83240/619c9a9aE64b50090/334a2e472aca1653.jpg"> </a>
                            </div>
                            <div class="p-name"><a href="#">
                                华为p50pro 新品手机 曜金黑 8G+256G
                            </a>
                            </div>
                            <div class="p-price"><strong>￥399.00</strong></div>
                        </li>
                    </ul>
                </div>
            </div>
            <div class="inright">
                <div class="infocomment">
                    <ul class="jiainfo">
                        <li id="info" class="bright" >
                            <a href="javascript:void(0);" @click="info()">
                                <span class="needs">商品介绍</span></a>
                        </li>

                        <li id="data">
                            <a href="javascript:void(0);" @click="data()">
                                <span class="needs">商品详情</span></a>
                        </li>

                        <li id="comment">
                            <a href="javascript:void(0);" @click="comment()">
                                <span class="needs">商品评价</span></a>
                        </li>
                    </ul>
                    <div class="rongqi">
                        <div id="ininfo" class="show">
                            <ul class="slist">
                                <li title="三星Galaxy A52 5G">商品名称：三星Galaxy A52 5G</li>
                                <li title="100019155938">商品编号：100019155938</li>
                                <li title="375.00g">商品毛重：375.00g</li>
                                <li title="越南">商品产地：越南</li>
                                <li title="骁龙750G">CPU型号：骁龙750G</li>
                                <li title="8GB">运行内存：8GB</li>
                                <li title="128GB">机身存储：128GB</li>
                                <li title="支持MicroSD(TF)">存储卡：支持MicroSD(TF)</li>
                                <li title="6400万像素">后摄主摄像素：6400万像素</li>
                                <li title="3200万像素">前摄主摄像素：3200万像素</li>
                                <li title="全高清FHD+">分辨率：全高清FHD+</li>
                                <li title="9V/1.67A">充电器：9V/1.67A</li>
                                <li title="防水防尘，NFC，屏幕指纹，人脸识别，屏幕高刷新率">热点：防水防尘，NFC，屏幕指纹，人脸识别，屏幕高刷新率</li>
                                <li title="支持IPv6">支持IPv6：支持IPv6</li>
                                <li title="Android">系统：Android</li>
                            </ul>
                            <div class="spic">

                            </div>
                        </div>
                        <div id="indata" class="noshow">
                            <div class="Ptable">
                                <div class="Ptable-item">
                                    <h3>主体</h3>
                                    <dl>
                                        <dl class="clearfix" style="margin:0">
                                            <dt>产品名称</dt><dd>三星 SAMSUNG Galaxy A52 5G 波波黑</dd>
                                        </dl>
                                        <dl class="clearfix" style="margin:0">
                                            <dt>品牌</dt><dd>三星（SAMSUNG）</dd>
                                        </dl>
                                        <dl class="clearfix" style="margin:0">
                                            <dt>首销日期</dt><dd>26日</dd>
                                        </dl>
                                        <dl class="clearfix" style="margin:0">
                                            <dt>上市年份</dt><dd>2021年</dd>
                                        </dl>
                                        <dl class="clearfix" style="margin:0">
                                            <dt>上市月份</dt><dd>3月</dd>
                                        </dl>
                                        <dl class="clearfix" style="margin:0">
                                            <dt>入网型号</dt><dd>SM-A5260</dd>
                                        </dl>
                                    </dl>
                                </div>
                                <div class="Ptable-item">
                                    <h3>基本信息</h3>
                                    <dl>
                                        <dl class="clearfix" style="margin:0">
                                            <dt>机身重量（g）</dt><dd>189</dd>
                                        </dl>
                                        <dl class="clearfix" style="margin:0">
                                            <dt>机身宽度（mm）</dt><dd>75.1</dd>
                                        </dl>
                                        <dl class="clearfix" style="margin:0">
                                            <dt>机身厚度（mm）</dt><dd>8.4</dd>
                                        </dl>
                                        <dl class="clearfix" style="margin:0">
                                            <dt>机身长度（mm）</dt><dd>159.9</dd>
                                        </dl>
                                        <dl class="clearfix" style="margin:0">
                                            <dt>机身材质</dt><dd>三星Super AMOLED 屏</dd>
                                        </dl>
                                    </dl>
                                </div>
                                <div class="Ptable-item">
                                    <h3>主芯片</h3>
                                    <dl>
                                        <dl class="clearfix" style="margin:0">
                                            <dt>CPU品牌</dt><dd>高通(Qualcomm)</dd>
                                        </dl>
                                        <dl class="clearfix" style="margin:0">
                                            <dt>GPU型号</dt><dd>骁龙750G</dd>
                                        </dl>
                                    </dl>
                                </div>
                                <div class="Ptable-item">
                                    <h3>屏幕</h3>
                                    <dl>
                                        <dl class="clearfix" style="margin:0">
                                            <dt>主屏幕尺寸</dt><dd>6.5英寸</dd>
                                        </dl>
                                        <dl class="clearfix" style="margin:0">
                                            <dt>屏幕材质类型</dt><dd>Super Amoled</dd>
                                        </dl>
                                        <dl class="clearfix" style="margin:0">
                                            <dt>屏幕刷新率</dt><dd>120Hz</dd>
                                        </dl>
                                    </dl>
                                </div>
                                <div class="Ptable-item">
                                    <h3>后置摄像头</h3>
                                    <dl>
                                        <dl class="clearfix" style="margin:0">
                                            <dt>后摄主摄光圈</dt><dd>f/1.8</dd>
                                        </dl>
                                        <dl class="clearfix" style="margin:0">
                                            <dt>闪光灯</dt><dd>LED灯</dd>
                                        </dl>
                                    </dl>
                                </div>
                                <div class="Ptable-item">
                                    <h3>前置摄像头</h3>
                                    <dl>
                                        <dl class="clearfix" style="margin:0">
                                            <dt>闪光灯</dt><dd>LED灯</dd>
                                        </dl>
                                    </dl>
                                </div>
                                <div class="Ptable-item">
                                    <h3>电池信息</h3>
                                    <dl>
                                        <dl class="clearfix" style="margin:0">
                                            <dt>电池可拆卸</dt><dd>不可拆卸</dd>
                                        </dl>
                                        <dl class="clearfix" style="margin:0">
                                            <dt>充电器</dt><dd>9V/1.67A</dd>
                                        </dl>
                                        <dl class="clearfix" style="margin:0">
                                            <dt>无线充电</dt><dd>不支持无线充电</dd>
                                        </dl>
                                    </dl>
                                </div>
                                <div class="Ptable-item">
                                    <h3>网络支持</h3>
                                    <dl>
                                        <dl class="clearfix" style="margin:0">
                                            <dt>最大支持SIM卡数量</dt><dd>2个</dd>
                                        </dl>
                                        <dl class="clearfix" style="margin:0">
                                            <dt>双卡机类型</dt><dd>双卡双待单通</dd>
                                        </dl>
                                        <dl class="clearfix" style="margin:0">
                                            <dt>SIM卡类型</dt>
                                            <dd>Nano SIM</dd>
                                        </dl>
                                        <dl class="clearfix" style="margin:0">
                                            <dt>3G/2G网络</dt><dd>3G WCDMA(联通)；2G GSM(移动/联通)</dd>
                                        </dl>
                                        <dl class="clearfix" style="margin:0">
                                            <dt>4G网络</dt><dd>4G FDD-LTE(联通)；4G TD-LTE(移动)；4G FDD-LTE(联通、电信)</dd>
                                        </dl>
                                        <dl class="clearfix" style="margin:0">
                                            <dt>5G网络</dt><dd>移动5G；联通5G；电信5G</dd>
                                        </dl>
                                    </dl>
                                </div>
                                <div class="Ptable-item">
                                    <h3>数据接口</h3>
                                    <dl>
                                        <dl class="clearfix" style="margin:0">
                                            <dt>NFC/NFC模式</dt><dd>支持（读卡器模式）；支持（卡模式）</dd>
                                        </dl>
                                        <dl class="clearfix" style="margin:0">
                                            <dt>数据传输接口</dt><dd>WIFI；WiFi热点；蓝牙；NFC</dd>
                                        </dl>
                                        <dl class="clearfix" style="margin:0">
                                            <dt>充电接口类型</dt><dd>Type-C</dd>
                                        </dl>
                                        <dl class="clearfix" style="margin:0">
                                            <dt>耳机接口类型</dt><dd>3.5mm</dd>
                                        </dl>
                                    </dl>
                                </div>
                                <div class="Ptable-item">
                                    <h3>手机特性</h3>
                                    <dl>
                                        <dl class="clearfix" style="margin:0">
                                            <dt>三防标准</dt><dd>IP67</dd>
                                        </dl>
                                    </dl>
                                </div>
                            </div>
                            <div class="package-list">
                                <h3>包装清单</h3>
                                <p>手机*1 USB 数据线*1卡针*1USB 电源适配器*1使用说明书*1透明保护壳*1</p>
                            </div>
                        </div>

                        <div id="incomment" class="noshow">
                            <div class="goods">
                                <div class="rate">
                                    <strong>80<span>%</span></strong><br>
                                    <span>好评度</span>
                                </div>
                                <dl>
                                    <dt>买家印象</dt>
                                    <dd class="p-bfc">
                                        <q class="comm-tags"><span>性价比高</span><em>(217)</em></q>
                                        <q class="comm-tags"><span>系统流畅</span><em>(180)</em></q>
                                        <q class="comm-tags"><span>外观漂亮(</span><em>(123)</em></q>
                                        <q class="comm-tags"><span>功能齐全</span><em>(189)</em></q>
                                        <q class="comm-tags"><span>宇宙中心</span><em>(148)</em></q>
                                        <q class="comm-tags"><span>反应快</span><em>(132)</em></q>
                                        <q class="comm-tags"><span>照相不错</span><em>(19)</em></q>
                                        <q class="comm-tags"><span>通话质量好</span><em>(865)</em></q>
                                        <q class="comm-tags"><span>外国手机</span><em>(831)</em></q>
                                    </dd>
                                </dl>
                            </div>
                            <div class="clear"></div>
                            <div class="tb-r-filter-bar">
                                <ul class=" tb-taglist mr-avg-sm-4">
                                    <li class="tb-taglist-li tb-taglist-li-current">
                                        <div class="comment-info">
                                            <span>全部评价</span>
                                            <span class="tb-tbcr-num">(32)</span>
                                        </div>
                                    </li>

                                    <li class="tb-taglist-li tb-taglist-li-1">
                                        <div class="comment-info">
                                            <span>好评</span>
                                            <span class="tb-tbcr-num">(32)</span>
                                        </div>
                                    </li>

                                    <li class="tb-taglist-li tb-taglist-li-0">
                                        <div class="comment-info">
                                            <span>中评</span>
                                            <span class="tb-tbcr-num">(32)</span>
                                        </div>
                                    </li>

                                    <li class="tb-taglist-li tb-taglist-li--1">
                                        <div class="comment-info">
                                            <span>差评</span>
                                            <span class="tb-tbcr-num">(32)</span>
                                        </div>
                                    </li>
                                </ul>
                            </div>
                            <div class="clear"></div>
                            <ul class="comments-list">
                                <li class="mr-comment">
                                    <!-- 评论容器 -->
                                    <a href="">
                                        <img class="comment-img" src="images/abc.jpg" />
                                        <!-- 评论者头像 -->
                                    </a>

                                    <div class="mr-comment-main">
                                        <!-- 评论内容容器 -->
                                        <header class="mr-comment-hd">
                                            <!--<h3 class="mr-comment-title">评论标题</h3>-->
                                            <div class="mr-comment-meta">
                                                <!-- 评论元数据 -->
                                                <a href="#link-to-user" class="mr-comment-author">嘉然今天吃什么</a>
                                                <!-- 评论者 -->
                                                评论于
                                                <time datetime="">2021年12月02日 17:46</time>
                                            </div>
                                        </header>

                                        <div class="mr-comment-bd">
                                            <div class="tb-rev-item " data-id="255776406962">
                                                <div class="J_TbcRate_ReviewContent tb-tbcr-content ">
                                                    “云想衣裳花想容，春风拂槛露华浓。
                                                    若非群玉山头见，会向瑶台月下逢。”

                                                    12月11日晚上8点，相约@嘉然今天吃什么 直播间，传说的世界——A-SOUL一周年纪念直播，有你相陪！

                                                </div>
                                                <div class="tb-r-act-bar">
                                                    颜色分类：金&nbsp;&nbsp;电信4G
                                                </div>
                                            </div>

                                        </div>
                                        <!-- 评论内容 -->
                                    </div>
                                </li>
                                <li class="mr-comment">
                                    <!-- 评论容器 -->
                                    <a href="">
                                        <img class="comment-img" src="images/dfg.jpg" />
                                        <!-- 评论者头像 -->
                                    </a>

                                    <div class="mr-comment-main">
                                        <!-- 评论内容容器 -->
                                        <header class="mr-comment-hd">
                                            <!--<h3 class="mr-comment-title">评论标题</h3>-->
                                            <div class="mr-comment-meta">
                                                <!-- 评论元数据 -->
                                                <a href="#link-to-user" class="mr-comment-author">向晚大魔王</a>
                                                <!-- 评论者 -->
                                                评论于
                                                <time datetime="">2021年12月02日 17:46</time>
                                            </div>
                                        </header>

                                        <div class="mr-comment-bd">
                                            <div class="tb-rev-item " data-id="255776406962">
                                                <div class="J_TbcRate_ReviewContent tb-tbcr-content ">
                                                    “云想衣裳花想容，春风拂槛露华浓。
                                                    若非群玉山头见，会向瑶台月下逢。”

                                                    12月11日晚上8点，相约@嘉然今天吃什么 直播间，传说的世界——A-SOUL一周年纪念直播，有你相陪！

                                                </div>
                                                <div class="tb-r-act-bar">
                                                    颜色分类：金&nbsp;&nbsp;电信4G
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</template>

<script>
    import {info,data,comment} from "@/pages/Goodsinfo/js/goodsinfo";
    import {mapState} from "vuex";

    export default {
        name: "",
        data(){
            return{
                num:1,
            }
        },
        mounted() {
            // alert(this.$route.params.goodsid)
            // console.log(this.$route);
            this.$store.dispatch("getuserinfo", localStorage.getItem("token"));
            this.$store.dispatch("getgoodsinfobygoodsid",this.$route.params.goodsid);
        },
        computed:{
            ...mapState({
                userinfo:state => state.user.userinfo,
                gibg:state => state.goods.goodsinfobygoodsid,//goodsinfobygoodsid
            })
        },
        methods:{
            info:function () {
                info()
            },
            data:function () {
                data()
            },
            comment:function(){
                comment();
            },
            add:function(){
                const num = this.num;
                const goodsid = this.$route.params.goodsid;
                const buyerid = this.userinfo.buyerid;
                this.$store.dispatch("addgoodsincart",{buyerid,goodsid,num}).then(result => {alert("添加成功")});
            },
            addnum:function () {
                this.num++;
            },
            minunum:function () {
                if(this.num > 0){
                    this.num--;
                }
            }
        }
    }
</script>

<style scoped>
    #top {
        border-radius: 25px;
        width:100%;
        height: 30px;
        line-height: 30px;
        background: rgb(0, 128, 192);
        border-bottom: solid 1px #ddd;
    }


    .item-inform{
        max-width:1000px ;margin:0px auto;background:#fff ;
    }

    #top {
        border-radius: 25px;
        width:100%;
        height: 30px;
        line-height: 30px;
        background: #f7f7f7;
        border-bottom: solid 1px #ddd;
    }
    .balabal{
        width:100%;
        height: 120px;
        background: #fff;
    }

    .item-inform{
        max-width:1200px ;
        margin:0px auto;
        background:#fff ;
    }
    .left {
        margin-left: 10px;
        width: 450px;
        display: block;
        float: left;
    }
    .right{

        font-size: 12px;
        float: left;
        min-height: 350px;
        margin-left: 30px;
        width:600px;

    }
    .sname{
        font-size: 14px;
        padding: 8px 0;
        text-align: left;
    }
    .lsit{
        position: relative;
    }
    .price{
        font-size: 14px;
        text-align: left;
        background: #F7F7F7;
        overflow: hidden;
        height: 80px;
        padding-top: 4px;
    }
    .address{
        padding-left: 5px;
        width: 590px;
        height: 30px;
        background: #80ffff;
        float: left;
        display: block;
        margin-top: 10px;
        margin-bottom: 10px;
    }
    .price dl{
        font-size: 14px;
        list-style: none;
        color: #888;
        display: block;
        margin: 2px 10px;
    }
    .price dt{
        font-size: 14px;
        white-space: nowrap;
        color: #888;
        width: 70px;
        float: left;
        text-align: left;
        margin-top: 2px;
    }

    .nprice{
        color: #c00;
        font-size: 24px;
        font-weight: bold;
    }
    .tprice{
        font-size: 14px;
        text-decoration: line-through;
        padding-top: 7px;
        padding-bottom: 0px;
    }
    .biaodan{

        background: #F7F7F7;
        height: 150px;
        margin-top: 50px;
    }
    .radio{
        width:30px;
        height:30px;
        border:1px solid #999;
        border-radius:50%;
        position:relative;
    }
    .radio .point{
        width:20px;
        height:20px;
        background:#4684BA;
        position:absolute;
        left:5px;
        top:5px;
        border-radius:50%;

    }
    .introduce{
        width: 100%;
        margin: 0px auto;
        text-align: center;
        padding-bottom: 110px;
        max-width: 1200px;
        padding: 0;
    }
    .inleft{
        padding: 0;
        display: block;
        float: left;
        width: 20%;
    }
    .inleft ul{
        list-style: none;
        border: 1px solid #D4D4D4;
        width: 90%;
        margin: 0;
        padding: 0;
    }
    .ti{
        background-color: #f7f7f7;
        margin: 0;
        padding: 0;
        border: 0;

    }
    .inleft ul li{
        list-style: none;
        margin: 0px 10px;
        padding: 12px 0px;
        border-top: none;
    }
    .clear{
        clear: both;
    }
    a{
        color: #000;
        font-size: 14px;
        border: 0;
        cursor: pointer;
        text-decoration: none;
        outline: none;
    }
    .p-price strong {
        color: #E4393C;
        font-weight: 600;
    }

    .jiainfo{

        margin: 0;
        margin-bottom: 0;
        padding: 0;
        list-style: none;
        border-bottom: 1px solid #ddd;
        border-color: transparent;
        max-width: 960px;
        background: #F5F5F5;
        left: auto;
        right: auto;
        width: 960px;
    }
    .jiainfo > li span {
        font-size: 16px;
        padding: 5px 15px;
        font-weight: 700;
    }
    .inright{
        width: 80%;
        float: left;
        background: #fff;
        max-width: 1200px;
    }
    .jiainfo:before{
        content: " ";
        display: table;
    }
    .jiainfo > li.bright{
        border-top: 2px solid #F03726;
        border-bottom: none;
    }
    .jiainfo > li{
        list-style: none;
        width: 33.33333333%;
        position: relative;
        display: inline-block;

        margin-bottom: -1px;
        max-width: 216px;
        height: 36px;
        font-size: 16px;
        line-height: 36px;
        border-top: 2px solid transparent;
        border-bottom: 2px solid transparent;
        clear: both;
    }
    .show{
        top: 0;
        float: left;
        width: 100%;
        padding: 10px 10px 15px;
        transition: transform 0.3s, -webkit-transform 0.3s;
        opacity: 1;
        position: relative;
        z-index: 100;
        visibility: visible;
        transform: translateX(0);
    }
    .noshow{
        opacity: 0;
        position: absolute;
        top: 0;
        z-index: 99;
        float: left;
        width: 100%;
        padding: 10px 10px 15px;
        visibility: hidden;
        transition: transform 0.3s, -webkit-transform 0.3s;
        transform: translateX(100%);
    }
    .rongqi{
        position: relative;
        overflow: hidden;
        border: 1px solid #ddd;
        border-top: none;
        z-index: 100;
        transition: height .3s;
        border-color: transparent;
    }
    .slist{
        color: #666;
        margin: 0;
        list-style: none;
        overflow: hidden;
        padding: 20px 0 15px;
        text-align:left
    }
    .slist li{
        margin-left: 60px;
        list-style: none;
        white-space: nowrap;
        text-overflow: ellipsis;
        overflow: hidden;
        padding-left: 42px;
        float: left;
        margin-bottom: 5px;
        width: 200px;
    }
    .spic{
        margin-left: 90px;
        width: 750px;
        background-color: #cbcbcb;
        background-size: 100% 100%;
        background-image: url(//img30.360buyimg.com/sku/jfs/t1/165597/20/13038/662871/60518ceeE520a7c4f/5f22c75fe92fffe6.jpg);
        height: 2873px;
    }
    .Ptable {
        margin: 10px 0;
    }
    .Ptable-item {
        padding: 12px 0;
        line-height: 220%;
        color: #999;
        font-size: 12px;
        border-bottom: 1px solid #eee;
    }
    .Ptable-item h3 {
        font-weight: 400;
        width: 110px;
        text-align: right;
        float: left;
        font-size: 12px;
    }
    .Ptable-item dl {
        margin-left: 110px;
    }
    .Ptable-item dt {
        width: 160px;
        float: left;
        text-align: right;
        padding-right: 5px;
    }
    .Ptable-item dd {
        margin-left: 210px;
    }
    .clearfix:after {
        content: ".";
        display: block;
        height: 0;
        clear: both;
        visibility: hidden;
    }
    .Ptable-item:after {
        content: "";
        height: 0;
        visibility: hidden;
        display: block;
        clear: both;
    }
    .package-list {
        padding: 12px 0;
        line-height: 220%;
        color: #999;
        font-size: 12px;
        margin-top: -1px;
    }
    .package-list h3 {
        font-weight: 400;
        width: 130px;
        float: left;
        font-size: 12px;
    }
    .package-list p {
        margin-left: 155px;
        padding-right: 50px;
    }
</style>