<template>
    <div>
        <item/>
        <daojishi/>
        <itemlist/>
        <div id="backtotop">
            <BackTop>
                <div class="backtotop"><Icon type="ios-arrow-up"></Icon></div>
            </BackTop>
        </div>
    </div>

</template>

<script>
    import item from "./Item"
    import daojishi from "./daojishi"
    import itemlist from "./itemlist"
    export default {
        name: "",
        components:{
            item,
            daojishi,
            itemlist,
        },
        mounted() {
            if(localStorage.getItem("token") != null){
                this.$store.dispatch("getuserinfo", localStorage.getItem("token"));

            }
            this.$store.dispatch("getallgoods");
        }
    }
</script>

<style scoped>
    .backtotop {
        background-color: #1e90ff;
        border-radius: 5px;
        transition: background-color 0.5s;
    }

    .backtotop:hover {
        background-color: #1e70ff;
    }
</style>