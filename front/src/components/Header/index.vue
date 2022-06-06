<template>
    <div id="header">
        <div class = "w">
            <div id = "logo"><!-- logo -->
                <div>
                    <a class = "logo_extend">
                        <img src = "@/public/webimg/jiaran.jpg" style="display:block; height: 120px; margin: 0px auto; width: 100%;"/>
                    </a>
                </div>
            </div>
            <!-- searchbar -->
            <div class = "search"><!-- search -->
                <div class = "searchform">
                    <div id = "randomtext" class = "searchrantext"></div>
                    <input type = "text" class = "searchinput" name="searchbox" id = "searchbox" v-model="searchinfo">
                    <router-link :to="{path:'search',query:{searchinfo}}">
                        <button type="submit" class = "searchbutton"><span>搜素</span></button>
                    </router-link>

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
                searchinfo:'',
            }
        },
        mounted() {
            const time = setInterval("rantext()", 1000);
            var arr = ["笔记本电脑", "小米手机", "服装", "蛋白粉"];
            const num = arr.length;
            document.getElementById("randomtext").onmouseover = function () {
                document.getElementById("randomtext").style.cssText = "display:none;";
            }
            if (document.getElementById("searchbox").innerText != null){
                document.getElementById("randomtext").style.cssText = "display:none;";
            }else{
                document.getElementById("randomtext").style.cssText = "display: block;";
            }
            document.getElementById("randomtext").onmouseout = function () {
                document.getElementById("randomtext").style.cssText = "display:none;";
            }
            document.all["randomtext"].innerHTML = arr[Math.round(Math.random() * (num - 1))];
            clearInterval(time);

        }
    }
</script>

<style scoped>
    #header{
        background: #fff;
        border-bottom: 1px solid #ddd;
    }

    #header .w {
        position: relative;
        z-index: 11;
        height: 140px;
        background-color:#f4f4f4;
    }

    #logo{
        top:10px;
        z-index:2;
        left:20px;
        width: 190px;
        height: 60px;
    }

    #logo .logo_extend{
        top: 10px;
        left:20px;
        display: block;
        position:absolute;
        width: 190px;
        height: 120px;
        background: rgb(255, 255, 255);
    }

    .search{
        display:inline-block;
        margin-left:220px;
        width:500px;
        height:50px;
    }

    .searchform{
        position:relative;
        top:14px;
        height:36px;
        border:2px solid red;
        background-color:#fff;
    }

    .searchinput{
        position:absolute;
        float:left;
        border:none;
        padding:5px 17px 0px 17px;
        left:0;
        line-height:26px;
        font-size:12px;
        width:396px;
        outline:none;
    }

    .searchrantext{
        position:absolute;
        z-index:3;
        display:block;
        float:left;
        padding:10px 20px 0px 20px;
        font-size:12px;
        height:26px;
    }

    .searchbutton{
        float:right;
        border:0;
        width:60.4px;
        background-color:red;
        line-height:36px;
        font-size:20px;
        font-weight:700;
        color:#fff;
    }
</style>