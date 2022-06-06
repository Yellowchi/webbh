import requests from "@/api/request";
//将商品添加进购物车
export const reqaddgoodsincart = (data) => requests({url:'/cart/addincart',data,method:"POST"});
//获取购物车信息
export const reqgetcartinfo = (id) => requests({url:'/cart/getcartinfo/'+id,method:"GET"});
//从购物车删除某一商品
export const reqdeletegoodsincart = (id) => requests({url:'/cart/deleteincart/'+id,method:"POST"});