<template>
    <div>
        <div class="top-nav">
            <router-link to="/home">主页</router-link>
            <router-link to="/cart">购物车</router-link>
            <router-link to="/mycneter">个人中心</router-link>
            <a>设置</a>
        </div>
        <div class="profile-background">
            <div class="profile-border">
            </div>
        </div>
        <div style="position: relative">
            <div class="info-column left">
                <ul>
                    <li><a id="myinfo" class="active" @click="clickbutton_myinfo()"><h5>基本信息</h5></a></li>
                    <li><a id="deliveryinfo" @click="clickbutton_deliveryinfo()"><h5>收货地址</h5></a></li>
                    <li><a id="orderinfo" @click="clickbutton_orderinfo()"><h5>我的订单</h5></a></li>
                    <li><a id="notificationinfo" @click="clickbutton_notificationinfo()"><h5>我的通知</h5></a></li>
                    <li><a id="goodsinfo" @click="clickbutton_goodsinfo()"><h5>我的商品</h5></a></li>
                </ul>
            </div>
            <!--个人信息-->
            <div id="myinfo_table" style="display: block;" class="info-column right">
                <table class="my-table">
                    <tr class="my-tr">
                        <td class="my-td">昵称</td>
                        <td class="my-td">{{ userinfo.buyername }}</td>
                    </tr>
                    <tr class="my-tr">
                        <td class="my-td">性别</td>
                        <td class="my-td">{{ userinfo.sex }}</td>
                    </tr>
                    <tr class="my-tr">
                        <td class="my-td">年龄</td>
                        <td class="my-td">{{ userinfo.age }}</td>
                    </tr>
                </table>
                <button class="link"
                        style="position: absolute;left:98%;top:98%;transform:translate(-98%,-98%);vertical-align:middle"
                        @click="changemyinfo()">
                    <span>修改信息</span>
                </button>
            </div>
            <!--收货地址列表-->
            <div id="deliveryinfo_table" style="display: none;" class="info-column right">
                <div class="table-overflow">
                    <table class="delivery-table" id="deliverytable">
                        <tr class="delivery-tr">
                            <th class="delivery-td">编号</th>
                            <th class="delivery-td">收件人</th>
                            <th class="delivery-td">联系电话</th>
                            <th class="delivery-td">收货地址</th>
                            <th class="delivery-td">修改信息</th>
                        </tr>
                        <tr class="delivery-tr" v-for="(sainfo,index) in shopaddressinfo" :key="shopaddressinfo.said">
                            <td class="delivery-td">{{ index + 1 }}</td>
                            <td class="delivery-td">{{ sainfo.name }}</td>
                            <td class="delivery-td">{{ sainfo.tel }}</td>
                            <td class="delivery-td">{{ sainfo.address }}</td>
                            <td class="delivery-td">
                                <button class="link" style="vertical-align:middle" @click="changedelivery(index)">
                                    <span>修改地址</span>
                                </button>
                                <button class="link" style="background-color:#ff4757;vertical-align:middle"
                                        @click="deletedelivery(sainfo.said)">
                                    <span>删除地址</span>
                                </button>
                            </td>
                        </tr>
                    </table>
                </div>
                <a class="link"
                   style="position: absolute;left:98%;top:98%;transform:translate(-98%,-98%);vertical-align:middle"
                   @click="adddelivery()"><span>添加地址</span>
                </a>
            </div>
            <!--订单列表-->
            <div id="orderinfo_table" style="display: none;" class="info-column right">
                <div class="table-overflow">
                    <table class="delivery-table" id="ordertable">
                        <tr class="delivery-tr">
                            <th class="delivery-td">编号</th>
                            <th class="delivery-td">姓名</th>
                            <th class="delivery-td">地址</th>
                            <th class="delivery-td">电话</th>
                            <th class="delivery-td">商品名称</th>
                            <th class="delivery-td">数量</th>
                            <th class="delivery-td">总价</th>
                        </tr>
                        <!--遍历-->
                        <tr class="delivery-tr" v-for="(oi,index) in neworderinfo.orderdetails" :key="oi.oddid">
                            <td class="delivery-td">{{index + 1}}</td>
                            <td class="delivery-td">{{neworderinfo.orders[0].buyername}}</td>
                            <td class="delivery-td">{{neworderinfo.orders[0].address}}</td>
                            <td class="delivery-td">{{neworderinfo.orders[0].tel}}</td>
                            <td class="delivery-td">{{oi.goodsname}}</td>
                            <td class="delivery-td">{{oi.num}}</td>
                            <td class="delivery-td">{{oi.sumprice}}</td>
                        </tr>
                    </table>
                </div>
            </div>

            <div id="notificationinfo_table" style="display: none;" class="info-column right">

            </div>
            <!--商品列表-->
            <div id="goodsinfo_table" style="display: none" class="info-column right">
                <div class="table-overflow">
                    <table class="delivery-table" id="addgoods_table">
                        <tr class="delivery-tr">
                            <th class="delivery-td">编号</th>
                            <th class="delivery-td">商品名称</th>
                            <th class="delivery-td">商品类型</th>
                            <th class="delivery-td">商品品牌</th>
                            <th class="delivery-td">商品价格</th>
                            <th class="delivery-td">库存</th>
                            <th class="delivery-td">操作</th>
                        </tr>
                        <tr class="delivery-tr" v-for="(goods,index) in goodsinfo" :key="goodsinfo.goodsid">
                            <td class="delivery-td">{{ index + 1 }}</td>
                            <td class="delivery-td">{{ goods.goodsname }}</td>
                            <td class="delivery-td">{{ goods.goodskind }}</td>
                            <td class="delivery-td">{{ goods.goodsbrand }}</td>
                            <td class="delivery-td">{{ goods.goodsprice }}</td>
                            <td class="delivery-td">{{ goods.goodsnum }}</td>
                            <td class="delivery-td">
                                <button class="link" style="vertical-align:middle;" @click="showgoodsinfo(index)">
                                    <span>显示商品详情</span>
                                </button>
                                <button class="link" style="vertical-align:middle" @click="changegoodsinfo(index)">
                                    <span>修改商品信息</span>
                                </button>
                                <button class="link" style="background-color:#ff4757;vertical-align:middle"
                                        @click="deletegoodsinfo(goods.goodsid)">
                                    <span>删除商品信息</span>
                                </button>
                            </td>
                            <div :id="'info_'+index"
                                 style="display: none;position: absolute;z-index: 10;left:20%;top:10%"
                                 class="changemyinfo">
                                <button class="closebutton" @click="closegoodsinfo(index)"><span>&#10005</span></button>
                                <div>
                                    {{ goods.goodsintro }}
                                </div>

                            </div>
                        </tr>
                    </table>
                </div>
                <a class="link"
                   style="position: absolute;left:98%;top:98%;transform:translate(-98%,-98%);vertical-align:middle"
                   @click="addgoods()"><span>添加商品</span></a>
            </div>

            <!--            修改个人信息-->
            <div class="changemyinfo" style="display: none;" id="change">
                <div>
                    <button class="closebutton" @click="closechangemyinfo()">
                        <span>&#10005</span>
                    </button>
                    <div class="formdiv">
                        <span class="changeinfospan">昵称</span>
                        <input type="text" class="textfield" name="myinfo_id" v-model="changemyinfo_buyername">
                        <span class="changeinfospan">性别</span>
                        <input type="text" class="textfield" name="myinfo_sex" v-model="changemyinfo_sex">
                        <span class="changeinfospan">年龄</span>
                        <input type="text" class="textfield" name="myinfo_age" v-model="changemyinfo_age">
                        <input hidden="hidden" type="text" name="username" value="">
                        <button value="修改" class="link changeinfoinput" @click="checkchangemyinfo()">修改</button>
                    </div>

                </div>
            </div>
        </div>

        <!--        修改地址-->
        <div id="changedelivery" style="display: none;height: 500px" class="changemyinfo">
            <div>
                <button class="closebutton" @click="closedelivery()">
                    <span>&#10005</span>
                </button>
                <div class="formdiv">
                    <div id="changedelivery_div" style="height:470px;top:40%;">
                        <span class="changeinfospan">编号</span>
                        <span class="textfield" style="display: block">{{ changedelivery_no }}</span>
                        <span class="changeinfospan">姓名</span>
                        <input type="text" class="textfield" name="myinfo_id" v-model="changedelivery_name">
                        <span class="changeinfospan">电话</span>
                        <input type="text" class="textfield" name="myinfo_id" v-model="changedelivery_tel">
                        <span class="changeinfospan">地址ַ</span>
                        <input type="text" class="textfield" name="myinfo_id" v-model="changedelivery_address">
                    </div>
                    <button value="提交" class="link changeinfoinput" @click="checkchangedelivery()">提交</button>
                    <span hidden="hidden" name="username"></span>
                </div>
            </div>
        </div>

        <!--        删除地址-->
        <div id="deletedelivery" style="display: none" class="changemyinfo">
            <h3>确认删除</h3>
            <button>
                <div action="checkdeldelivery.jsp" class="formdiv">
                    <span hidden="hidden" name="username"><%=(String) session.getAttribute("username")%></span>
                    <span hidden="hidden" id="del_num"></span>
                    <input type="submit" name="num" value="确认" class="link changeinfoinput">
                </div>div>
            </button>
            <button @click="closedeldelivery()">取消</button>
        </div>


        <!--        添加地址-->
        <div id="adddelivery" style="display: none" class="changemyinfo">
            <div>
                <button class="closebutton" @click="closeadddelivery()">
                    <span>&#10005</span>
                </button>
                <div class="formdiv">
                    <div id="adddelivery_div">
                        <span class="changeinfospan">姓名</span>
                        <input type="text" class="textfield" name="myinfo_id" v-model="adddelivery_name">
                        <span class="changeinfospan">电话</span>
                        <input type="text" class="textfield" name="myinfo_id" v-model="adddelivery_tel">
                        <span class="changeinfospan">地址ַ</span>
                        <input type="text" class="textfield" name="myinfo_id" v-model="adddelivery_address">
                    </div>
                    <button value="提交" class="link changeinfoinput" @click="checkadddelivery()">提交</button>
                    <span hidden="hidden" name="username"></span>
                </div>
            </div>
        </div>

        <!--        添加商品信息-->
        <div id="addgoodsinfo" style="display: none;overflow:scroll;height: 800px;top:30%" class="changemyinfo">
            <div>
                <button class="closebutton" @click="closeaddgoods()">
                    <span>&#10005</span>
                </button>
                <div class="formdiv">
                    <div id="addgoodsinfo_div" style="overflow: auto">
                        <Upload
                                multiple
                                action="/api/user/addgoodsimg">
                            <Button icon="ios-cloud-upload-outline">Upload files</Button>
                        </Upload><br>
                        <span class="changeinfospan">商品名</span>
                        <input type="text" class="textfield" name="goodsinfo_name" v-model="addgoodsinfo_goodsname">
                        <span class="changeinfospan">商品种类</span>
                        <input type="text" class="textfield" name="goodsinfo_kind" v-model="addgoodsinfo_goodskind">
                        <span class="changeinfospan">商品品牌</span>、
                        <input type="text" class="textfield" name="goodsinfo_brand" v-model="addgoodsinfo_goodsbrand">
                        <span class="changeinfospan">商品价格</span>
                        <input type="text" class="textfield" name="goodsinfo_price" v-model.number="addgoodsinfo_goodsprice">
                        <span class="changeinfospan">商品库存</span>
                        <input type="text" class="textfield" name="goodsinfo_num" v-model.number="addgoodsinfo_goodsnum">
                        <span class="changeinfospan">商品详情</span>
                        <Input type="textarea" name="goodsinfo_intro" v-model="addgoodsinfo_goodsintro" :autosize="{minRows: 2,maxRows: 5}"/>
                    </div>
                    <button value="提交" class="link changeinfoinput" @click="checkaddgoodsinfo();upload()">提交</button>
                    <span hidden="hidden" name="sellerid"></span>
                </div>
            </div>
        </div>

        <!--        修改商品信息-->
        <div id="changegoodsinfo" style="display: none;overflow:scroll;height: 800px;top:30%" class="changemyinfo">
            <div>
                <button class="closebutton" @click="closechangegoodsinfo()">
                    <span>&#10005</span>
                </button>
                <div class="formdiv" enctype="multipart/form-data">
                    <div id="changegoodsinfo_div">
                        <span class="changeinfospan">编号</span>
                        <span class="textfield">{{changegoodsinfo_no}}</span>
                        <span class="changeinfospan">商品名</span>
                        <input type="text" class="textfield" name="goodsinfo_name" v-model="changegoodsinfo_goodsname">
                        <span class="changeinfospan">商品种类</span>
                        <input type="text" class="textfield" name="goodsinfo_kind" v-model="changegoodsinfo_goodskind">
                        <span class="changeinfospan">商品品牌</span>、
                        <input type="text" class="textfield" name="goodsinfo_brand" v-model="changegoodsinfo_goodsbrand">
                        <span class="changeinfospan">商品价格</span>
                        <input type="text" class="textfield" name="goodsinfo_price" v-model.number="changegoodsinfo_goodsprice">
                        <span class="changeinfospan">商品库存</span>
                        <input type="text" class="textfield" name="goodsinfo_num" v-model.number="changegoodsinfo_goodsnum">
                        <span class="changeinfospan">商品详情</span>
                        <Input type="textarea" name="goodsinfo_intro" v-model="changegoodsinfo_goodsintro" :autosize="{minRows: 2,maxRows: 5}"/>
                    </div>
                    <button class="link changeinfoinput" @click="checkchangegoodsinfo">确认</button>
                    <span hidden="hidden" name="goodsid"></span>
                </div>
            </div>
        </div>

        <footer class="footer-background">
            <p class="footer-text">嘉然今天吃什么&#169</p>
            <p class="footer-text"><a
                    href="https://space.bilibili.com/672328094?from=search&seid=7792977138303516414&spm_id_from=333.337.0.0">参考链接</a>
            </p>
        </footer>

        <div></div>
    </div>
</template>

<script>
    import {
        clickbutton_myinfo,
        clickbutton_deliveryinfo,
        clickbutton_orderinfo,
        clickbutton_notificationinfo,
        clickbutton_goodsinfo
    } from "./js/clickbutton"
    import {mapState} from "vuex";

    export default {
        name: "",
        data() {
            return {
                changemyinfo_buyername: '',
                changemyinfo_sex: '',
                changemyinfo_age: '',
                changedelivery_no: '',
                changedelivery_name: '',
                changedelivery_tel: '',
                changedelivery_address: '',
                changedelivery_id: '',
                adddelivery_name: '',
                adddelivery_tel: '',
                adddelivery_address: '',
                addgoodsinfo_goodsname:'',
                addgoodsinfo_goodskind:'',
                addgoodsinfo_goodsbrand:'',
                addgoodsinfo_goodsprice:'',
                addgoodsinfo_goodsintro:'',
                addgoodsinfo_goodsnum:'',
                changegoodsinfo_no:'',
                changegoodsinfo_id:'',
                changegoodsinfo_goodsname:'',
                changegoodsinfo_goodskind:'',
                changegoodsinfo_goodsbrand:'',
                changegoodsinfo_goodsprice:'',
                changegoodsinfo_goodsintro:'',
                changegoodsinfo_goodsnum:'',
                file: null,
                loadingStatus: false,
            }
        },
        mounted() {
            this.$store.dispatch("getid", localStorage.getItem("token"));
            this.$store.dispatch("getuserinfo", localStorage.getItem("token"));
            this.$store.dispatch("getshopaddress", localStorage.getItem("token"));
            this.$store.dispatch("getgoodsinfo", localStorage.getItem("token"));
            // this.$store.dispatch("getorders",localStorage.getItem("token"));
            this.$store.dispatch("getordersnew",localStorage.getItem("token"));
        },
        computed: {
            ...mapState({
                id: state => state.user.id,
                userinfo: state => state.user.userinfo,
                shopaddressinfo: state => state.user.shopaddressinfo,
                goodsinfo: state => state.user.goodsinfo,
                // orderinfo: state => state.order.orderinfo,
                neworderinfo:state => state.order.neworderinfo,
            })
        },
        methods: {
            clickbutton_myinfo: function () {
                clickbutton_myinfo()
            },
            clickbutton_deliveryinfo: function () {
                clickbutton_deliveryinfo()
            },
            clickbutton_orderinfo: function () {
                clickbutton_orderinfo()
            },
            clickbutton_notificationinfo: function () {
                clickbutton_notificationinfo()
            },
            clickbutton_goodsinfo: function () {
                clickbutton_goodsinfo()
            },
            changemyinfo: function () {
                document.getElementById("change").style.display = "block";
                this.changemyinfo_buyername = this.userinfo.buyername;
                this.changemyinfo_age = this.userinfo.age;
                this.changemyinfo_sex = this.userinfo.sex;
            },
            checkchangemyinfo: function () {
                const buyerid = this.userinfo.buyerid, buyername = this.changemyinfo_buyername, sex = this.changemyinfo_sex,
                    age = this.changemyinfo_age;
                this.$store.dispatch("updateuserinfo", {buyerid, buyername, sex, age}).then(result => {
                    alert("修改成功")
                });
            },
            closechangemyinfo: function () {
                document.getElementById("change").style.display = "none";
            },
            changedelivery: function (num) {
                document.getElementById("changedelivery").style.display = "block";
                this.changedelivery_no = (num + 1);
                this.changedelivery_name = this.shopaddressinfo[num].name;
                this.changedelivery_tel = this.shopaddressinfo[num].tel;
                this.changedelivery_address = this.shopaddressinfo[num].address;
                this.changedelivery_id = this.shopaddressinfo[num].said;
            },
            checkchangedelivery: function () {
                const said = this.changedelivery_id, name = this.changedelivery_name, tel = this.changedelivery_tel,
                    address = this.changedelivery_address, buyerid = this.userinfo.buyerid;
                this.$store.dispatch("updateshopaddress", {said, buyerid, name, tel, address}).then(result => {
                    alert("修改成功")
                });
            },
            closedelivery: function () {
                document.getElementById("changedelivery").style.display = "none";
            },
            deletedelivery: function (num) {
                let id = num;
                this.$store.dispatch("deleteshopaddress", id).then(result => {
                    alert("删除成功")
                });
            },
            adddelivery: function () {
                document.getElementById("adddelivery").style.display = "block";
            },
            closeadddelivery: function () {
                document.getElementById("adddelivery").style.display = "none";
            },
            checkadddelivery: function () {
                const buyerid = this.userinfo.buyerid, name = this.adddelivery_name,
                    address = this.adddelivery_address,
                    tel = this.adddelivery_tel;
                this.$store.dispatch("addshopaddress", {buyerid, name, address, tel}).then(result => {
                    alert("添加成功")
                });
            },
            showgoodsinfo: function (num) {
                document.getElementById("info_" + num).style.display = "block";
            },
            closegoodsinfo: function (num) {
                document.getElementById("info_" + num).style.display = "none";
            },
            changegoodsinfo: function (num) {
                document.getElementById("changegoodsinfo").style.display = "block";
                this.changegoodsinfo_goodsname = this.goodsinfo[num].goodsname;
                this.changegoodsinfo_goodskind = this.goodsinfo[num].goodskind;
                this.changegoodsinfo_goodsbrand = this.goodsinfo[num].goodsbrand;
                this.changegoodsinfo_goodsprice = this.goodsinfo[num].goodsprice;
                this.changegoodsinfo_goodsintro = this.goodsinfo[num].goodsintro;
                this.changegoodsinfo_goodsnum = this.goodsinfo[num].goodsnum;
                this.changegoodsinfo_id = this.goodsinfo[num].goodsid;
            },
            closechangegoodsinfo: function () {
                document.getElementById("changegoodsinfo").style.display = "none";
            },
            checkchangegoodsinfo:function () {
                const sellerid = this.id.sellerid,goodsid = this.changegoodsinfo_id,goodsname = this.changegoodsinfo_goodsname,
                    goodskind = this.changegoodsinfo_goodskind,goodsbrand = this.changegoodsinfo_goodsbrand,goodsprice = this.changegoodsinfo_goodsprice,
                    goodsintro = this.changegoodsinfo_goodsintro,goodsnum = this.changegoodsinfo_goodsnum;
                this.$store.dispatch("changegoodsinfo",{sellerid,goodsid,goodsname,goodskind,goodsbrand,goodsprice,goodsintro,goodsnum}).then(result => {
                    alert("修改成功");
                });
            },
            deletegoodsinfo: function (num) {
                alert(num);
                this.$store.dispatch("deletegoodsinfo",num).then(result => {alert("删除成功")});
            },
            addgoods: function () {
                document.getElementById("addgoodsinfo").style.display = "block";

            },
            closeaddgoods: function () {
                document.getElementById("addgoodsinfo").style.display = "none";
            },
            checkaddgoodsinfo:function() {
                console.log(this.$refs.pic);
                const sellerid = this.id.sellerid,goodsname = this.addgoodsinfo_goodsname,goodskind = this.addgoodsinfo_goodskind,
                    goodsbrand = this.addgoodsinfo_goodsbrand,goodsprice = this.addgoodsinfo_goodsprice,goodsintro = this.addgoodsinfo_goodsintro,
                    goodsnum = this.addgoodsinfo_goodsnum;

                this.$store.dispatch("addgoodsinfo",{sellerid,goodsname,goodskind,goodsbrand,goodsprice,goodsintro,goodsnum}).then(result =>
                {
                    alert("添加成功");
                });
            },
            handleUpload (file) {
                this.file = file;
                return false;
            },
            upload () {
                this.loadingStatus = true;
                setTimeout(() => {
                    this.file = null;
                    this.loadingStatus = false;
                    this.$Message.success('Success')
                }, 1500);
            }
        }
    }
</script>

<style scoped>
    /*顶部导航栏*/
    .top-nav {
        border-radius: 10px;
        list-style-type: none;
        margin: 0;
        padding: 0;
        overflow: hidden;
        background-color: #0a3d62;
        width: 100%;
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


    /*头像信息*/
    .profile-background {
        border-radius: 10px;
        height: 200px;
        width: 80%;
        background-color: #3c6382;
        position: relative;
        margin: 25px auto;
    }

    .profile-border {
        width: 150px;
        height: 150px;
        border: 2px solid white;
        border-radius: 50%;
        box-shadow: 0 0 50px dimgrey;
        background-color: white;
        position: absolute;
        left: 50%;
        top: 50%;
        transform: translate(-50%, -50%);
    }


    /*个人信息*/
    .info-column.left {
        border-radius: 10px;
        height: 600px;
        width: 15%;
        background-color: #60a3bc;
        float: left;
        margin-left: 10%;
        margin-top: 25px;
        margin-bottom: 25px;
    }

    .info-column.right {
        border-radius: 10px;
        height: 600px;
        width: 64%;
        background-color: #ced6e0;
        float: left;
        position: relative;
        margin-left: 1%;
        margin-top: 25px;
        margin-bottom: 25px;
    }


    /*垂直导航栏*/
    ul {
        border-radius: 10px;
        list-style-type: none;
        margin: 0;
        padding: 0;
        width: 100%;
        background-color: #60a3bc;
    }

    li a {
        border-radius: 10px;
        display: block;
        color: white;
        padding: 10px 16px;
        text-decoration: none;
    }

    li a.active {
        background-color: #82ccdd;
        color: white;
    }

    li a:hover:not(.active) {
        background-color: #82ccdd;
        opacity: 0.8;
        color: white;
    }

    /*个人信息*/
    .my-table {
        border-collapse: collapse;
        width: 100%;
    }

    .my-td {
        text-align: center;
        font-size: 20px;
        font-weight: bold;
        padding: 40px;
    }

    .my-tr:nth-child(even) {
        background-color: white;
    }

    /*表格滚动条*/
    .table-overflow {
        height: 500px;
        overflow-y: auto;
    }

    /*收货地址表*/
    .delivery-table {
        border-collapse: collapse;
        width: 100%;
    }

    .delivery-td {
        text-align: center;
        padding: 30px;
    }

    .delivery-tr:nth-child(even) {
        background-color: white;
    }

    /*按钮链接*/
    .link {
        display: inline-block;
        border-radius: 10px;
        background-color: #7bed9f;
        border: none;
        color: #FFFFFF;
        text-align: center;
        font-size: 5px;
        font-weight: bold;
        padding: 5px;
        width: 75px;
        transition: all 0.5s;
        cursor: pointer;
    }

    .link span {
        cursor: pointer;
        display: inline-block;
        position: relative;
        transition: 0.5s;
    }

    .link span:after {
        content: '\27A4';
        position: absolute;
        opacity: 0;
        top: 0;
        right: -20px;
        transition: 0.5s;
    }

    .link:hover span {
        padding-right: 20px;
    }

    .link:hover span:after {
        opacity: 1;
        right: 0;
    }


    /*页脚*/
    .footer-background {
        border-radius: 10px;
        height: 150px;
        width: 100%;
        background-color: #f1f2f6;
        clear: both;
        margin-top: 700px;
    }

    .footer-text {
        font-size: 12px;
        font-weight: bold;
        color: #ced6e0;
        text-align: center;
    }


    /*购物车*/
    .total-price {
        height: 75px;
        width: 80%;
        margin-left: 10%;
        background-color: #dfe4ea;
        border-radius: 10px;
    }

    .cart-info {
        height: 600px;
        width: 80%;
        margin: 25px auto;
        background-color: #f1f2f6;
        border-radius: 10px;
    }

    .cart-overflow {
        height: 600px;
        overflow-y: auto;
    }

    /*购物车商品表*/
    .cart-table {
        border-collapse: collapse;
        width: 100%;
    }

    .cart-td {
        text-align: center;
        padding: 30px;
    }

    .cart-tr:nth-child(even) {
        background-color: white;
    }


    .changemyinfo {
        border-radius: 10px;
        position: absolute;
        width: 400px;
        height: 400px;
        left: 40%;
        top: 50%;
        background-color: white;
        box-shadow: 0 0 20px grey;
    }

    .closebutton {
        position: absolute;
        right: 8px;
        top: 5px;
        border: none;
        background-color: white;
        border-radius: 10px;
        width: 26px;
        height: 20px;
        font-size: 20px;
        font-weight: bold;
        color: #ced6e0;
    }

    .closebutton:hover {
        color: #95afc0;
    }

    .textfield {
        width: 100%;
        padding: 12px 20px;
        margin: 8px 0;
        box-sizing: border-box;
        border: none;
        outline: none;
        border-bottom: 2px solid #82ccdd;
        font-size: 15px;
    }

    .selectbox {
        width: 100%;
        padding: 12px 20px;
        margin: 8px 0;
        box-sizing: border-box;
        border: none;
        outline: none;
        border-bottom: 2px solid #82ccdd;
        font-size: 15px;
    }

    .formdiv {
        margin-top: 40px;
        margin-left: 20px;
        margin-right: 20px;
    }

    .changeinfospan {
        font-size: 20px;
        font-weight: bold;
        color: #535c68;
    }

    .changeinfoinput {
        position: absolute;
        left: 90%;
        top: 92%;
        transform: translate(-90%, -92%);
        vertical-align: middle;
    }

    .changemyinfo {
        border-radius: 10px;
        position: absolute;
        width: 400px;
        height: 400px;
        left: 40%;
        top: 50%;
        background-color: white;
        box-shadow: 0 0 20px grey;
    }

    .closebutton {
        position: absolute;
        right: 0px;
        top: 0px;
        width: 26px;
        height: 20px;
    }
</style>