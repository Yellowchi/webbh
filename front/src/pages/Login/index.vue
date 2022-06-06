<template>
    <div>
        <div class="head">
            <div class="logo">
                <a href="index.html"><img alt="logo" src="@/public/webimg/1.jpg" width="80px" height="80px"/></a>&nbsp
                <b>Login</b>
            </div>
            <div class="head_menu">
                <p class="mr-p2">关于我们</p>
                <p class="mr-p2">联系我们</p>
                <p class="mr-p2">开放平台</p>
                <p class="mr-p2">网页合作</p>
                <p class="mr-p2">法律声明</p>
                <p class="mr-p2">诚聘英才</p>
                <p class="mr-p2">知识产权</p>
            </div>
        </div>
        <br><br>
        <div id="content">
            <div class="login_icon">
                <img alt="logo1" src="@/public/webimg/7.jpg" width="120px" height="120px"/>
                <img alt="logo2" src="@/public/webimg/2.jpg" width="120px" height="120px"/>
                <img alt="logo3" src="@/public/webimg/3.jpg" width="120px" height="120px"/><br>
                <img alt="logo4" src="@/public/webimg/4.jpg" width="120px" height="120px"/>
                <img alt="logo5" src="@/public/webimg/5.jpg" width="120px" height="120px"/>
                <img alt="logo6" src="@/public/webimg/6.jpg" width="120px" height="120px"/>
            </div>
            <br><br>
            <div class="login_table">
                    <table height="320" width="350" align="center">
                        <tr>
                            <td align="right" style="font-size:18px ;color:#0a3d62">密码登录</td>
                            <td></td>
                        </tr>
                        <tr>
                            <td align="center"><img alt="user" src="@/public/webimg/user.jpg" width="30px" height="30px"/></td>
                            <td align="left"><input type="text" style="height:30px;width:180px;" name="un" v-model="username"/></td>
                        </tr>
                        <tr>
                            <td align="center"><img alt="pass" src="@/public/webimg/pass.jpg" width="30px" height="30px"/></td>
                            <td align="left"><input type="password" style="height:30px;width:180px;" name="pa" v-model="password"/></td>
                        </tr>
                        <tr>
                            <td align="center" colspan="2">

                                <button style="width:250px; height:45px ;background-color:#60a3bc ;color:white ;font-size:17px;border-radius: 12px;"
                                        @click="login()">
                                    登 录
                                </button>

                            </td>
                        </tr>
                    </table>
                <table width="350" align="center">
                    <tr>
                        <td align="right" style="font-size:13px;"><a href="#">忘记密码</a>&nbsp&nbsp</td>
                        <td align="left" style="font-size:13px;">|&nbsp&nbsp<a href="#">免费注册</a></td>
                    </tr>
                </table>
                <img alt="child" src="@/public/webimg/child.jpg" width="52px" height="52px" align="right"/>
            </div>
        </div>
        <div class="footer">
            <div class="footer-hd ">
                <p>
                    <a href="#">天猫</a>
                    <b>|</b>
                    <a href="#">淘宝</a>
                    <b>|</b>
                    <a href="#">阿里巴巴网</a>
                    <b>|</b>
                    <a href="#">全球通</a>
                    <b>|</b>
                    <a href="index.html">商城首页</a>
                    <b>|</b>
                    <a href="#">支付宝</a>
                    <b>|</b>
                    <a href="#">微信</a>
                    <b>|</b>
                    <a href="#">物流</a>
                </p>
            </div>
            <div class="footer-bd ">
                <p>
                    <a href="#">关于我们</a>
                    <a href="#">合作伙伴</a>
                    <a href="#">联系我们</a>
                    <a href="#">网站地图</a>
                    <a>© 2016-2025 mingrisoft.com 版权所有</a>&nbsp
                    <a>市场名称登记证：工商网市字2019131132号</a>&nbsp
                    <a>出版物网络交易平台服务经营备案证： 新出发浙备字第2019132号</a><br>
                    <a>互联网违法和不良信息举报电话：0571-81683755 blxxjb@alibaba-inc.com</a>&nbsp
                    <a>互联网药品信息服务资质证书编号：浙-（经营性）-2019-132</a>&nbsp
                    <a><img src="@/public/webimg/police.jpg" style="position:relative;top:5px;vertical-align:baseline;">上海公安：62310110</a>
                </p>
            </div>
        </div>
    </div>
</template>

<script>
    export default {
        name: "",
        data(){
            return{
                username:"",
                password:""
            }
        },
        methods:{
            login:function () {
                const {username,password} = this;
                this.$store.dispatch("login",{username,password}).then(result => {this.$router.push("/home")});
            }
        }
    }
</script>

<style scoped>
    .head {
        width: 1500px;
        height:75px;
        margin: 0 auto;
    }
    .logo {
        position: relative;
        width: 170px;
        margin: 10px 60px;
        height: 70px;
        float: left;
    }

    b{
        font-size: 29px;
        font-family:"Microsoft JhengHei";
    }

    #content {
        clear: both;
        background:#60a3bc;
        width:1600px;
        height:545px;
        margin-left:30px;
        border-radius: 30px;

    }
    .login_icon{
        margin-left:360px;
        margin-top:140px;
        height:200px;
        width:600px;
        float:left}

    .login_table{
        margin-top:0px;
        margin-right:250px;
        border-radius: 30px;
        height:388px;
        width:365px;
        background:white;
        float:right}

    .head_menu{
        width:1000px;
        height:45px;
        border-bottom:3px solid;
        margin-top:40px;
        float:left;
    }

    .head_menu .mr-p1{
        display:inline-block;
        font-size:10px;
        color:#666;
        float:right;
        padding:10px 20px 0 0;
    }
    .head_menu .mr-p2{
        display:inline-block;
        font-size:13px;
        color:black;
        float:right;
        padding:10px 20px 0 0;
        ffont-family:"Microsoft JhengHei";
    }

    .footer {
        width: 100%;
        margin-bottom: 0;
        padding-bottom: 0;
    }

    .footer-bd{

        padding: 0;
        border: 0;
        font-size: 100%;
        font: inherit;
        margin-left:100px;
        vertical-align: baseline;
        font-family: arial, "Lantinghei SC", "Microsoft Yahei";
    }

    .footer-hd{

        padding: 0;
        border: 0;
        font-size: 100%;
        font: inherit;
        margin-left:100px;
        vertical-align: baseline;
        font-family: arial, "Lantinghei SC", "Microsoft Yahei";
    }

    .footer .footer-hd a {
        margin: 0px 4px;
        white-space: nowrap;
        color: #6C6C6C;
        font-size:12px;
    }
    .footer .footer-hd b {
        margin: 0px 3px;
        font-size: 5px;
        color: #DDD;
    }
    .footer .footer-bd a {
        margin: 0px 4px;
        white-space: nowrap;
        color: #6C6C6C;
        font-size:12px;
    }
    .footer .footer-bd b {
        margin: 0px 3px;
        font-weight: 400;
        color: #DDD;
        font-size:12px;
    }
</style>