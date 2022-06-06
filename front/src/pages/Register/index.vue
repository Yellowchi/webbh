<template>
    <div>
        <div class="head">
            <div class="logo">
                <a href="index.html">
                    <img alt="logo" src="@/public/webimg/1.jpg" width="80px" height="80px"/>
                </a>&nbsp
                <b>Register</b>
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
        <br>
        <br>
        <div id="content">
            <div class="register_icon1">
                <img alt="logo3" src="@/public/webimg/7.jpg" width="120px" height="120px" class="mr_img"/>
                <img alt="logo6" src="@/public/webimg/2.jpg" width="120px" height="120px" class="mr_img2"/><br>
                <img alt="logo4" src="@/public/webimg/4.jpg" width="120px" height="120px" class="mr_img2"/>
                <img alt="logo2" src="@/public/webimg/5.jpg" width="120px" height="120px" class="mr_img"/>
            </div>
            <br>
            <br>
            <div class="register_table">
                <br>

                    <table height="320" width="350" align="center">
                        <tr>
                            <td align="center" colspan="2" style="font-size:18px ;color:#0a3d62">用户注册</td>
                        </tr>
                        <tr>
                            <td style="font-size:14px ;color:#808080">&nbsp&nbsp&nbsp&nbsp
                                <img alt="user" src="@/public/webimg/user.jpg" width="15px" height="15px"/>&nbsp&nbsp username
                            </td>
                        </tr>
                        <tr>
                            <td align="center"><input type="text"
                                                      style="height:20px;width:230px; border: 0; border-bottom: thin solid;"
                                                      name="un"
                                                      v-model="username"/></td>
                        </tr>
                        <tr>
                            <td style="font-size:14px ;color:#808080">&nbsp&nbsp&nbsp&nbsp<img alt="pass" src="@/public/webimg/pass.jpg" width="15px" height="15px"/>&nbsp&nbsp password
                            </td>
                        </tr>
                        <tr>
                            <td align="center"><input type="password"
                                                      style="height:20px;width:230px; border: 0; border-bottom: thin solid;"
                                                      name="pa"
                                                      v-model="password"/></td>
                        </tr>
                        <tr>
                            <td style="font-size:14px ;color:#808080">&nbsp&nbsp&nbsp&nbsp<img alt="pass" src="@/public/webimg/pass.jpg" width="15px" height="15px"/>&nbsp&nbsp check your password
                            </td>
                        </tr>
                        <tr>
                            <td align="center"><input type="password"
                                                      style="height:20px;width:230px; border: 0; border-bottom: thin solid;"
                                                      name="repa"
                                                      v-model="repassword"/></td>
                        </tr>
                        <tr>
                            <td style="font-size:13px ;color:#808080">&nbsp&nbsp&nbsp&nbsp<input type="checkbox" name="know" v-model="checkinfo">&nbsp&nbsp我已阅读并同意<a
                                    href="">《用户协议与隐私政策》</a></td>
                        </tr>
                        <tr>
                            <td align="center" colspan="2">
                                <button style="width:250px; height:45px ;background-color:#60a3bc ;color:white ;font-size:17px;border-radius: 12px;"
                                        @click="register()">确认注册
                                </button>
                            </td>
                        </tr>
                    </table>

            </div>
            <div class="register_icon2">
                <img alt="logo3" src="@/public/webimg/3.jpg" width="120px" height="120px" class="mr_img2"/>
                <img alt="logo6" src="@/public/webimg/1.jpg" width="120px" height="120px" class="mr_img"/><br>
                <img alt="logo4" src="@/public/webimg/2.jpg" width="120px" height="120px" class="mr_img"/>
                <img alt="logo2" src="@/public/webimg/6.jpg" width="120px" height="120px" class="mr_img2"/>
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
                username:'',
                password:'',
                repassword:'',
                checkinfo:'',
            }
        },
        methods:{
            register:function () {
                const {checkinfo,username,password,repassword} = this;
                if(checkinfo){
                    if(password == repassword){
                        this.$store.dispatch("register",{username,password}).then(result => {this.$router.push("/login")});
                    }else(
                        alert("密码不一致")
                    )
                }else{
                    alert("请同意协议")
                }
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
        width: 220px;
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
    .register_icon1{
        margin-left:225px;
        margin-top:140px;
        height:200px;
        width:370px;
        float:left}

    .register_icon2{
        margin-right:220px;
        margin-top:105px;
        height:200px;
        width:300px;
        float:right}
    .register_table{
        margin-top:0px;
        border-radius: 30px;
        height:388px;
        width:365px;
        background:white;
        float:left}

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

    .mr_img:hover{
        -moz-transform:rotate(270deg);
        -webkit-transform:rotate(270deg);
        -o-transform:rotate(270deg);
        -ms-transform:rotate(270deg);
    }

    .mr_img2:hover{
        -moz-transform:scale(0.7);
        -webkit-transform:scale(0.7);
        -o-transform:scale(0.7);
        -ms-transform:scale(0.7);
    }
</style>