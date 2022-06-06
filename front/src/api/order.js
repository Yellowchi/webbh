import requests from "@/api/request";
//创建订单
export const reqinsertorder = (data) => requests({url:"/order/insert",data,method:"POST"});
//查询所有订单
export const reqgetorders = (id) => requests({url:"/user/getorders/"+id,method:"GET"});
//新创建订单
export const reqinsertordernew = (data) => requests({url:"/orders/insert",params:{
    "buyerid":data.buyerid,
    "goodsid":data.goodsid.toString(),
    "said":data.said,
    "num":data.num.toString(),
    },method:"POST"});
//新查询所有订单
export const reqgetordersnew = (id) => requests({url:"/user/getordersnew/"+id,method:"GET"});