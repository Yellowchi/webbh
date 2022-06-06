import requests from "@/api/request";
//获得收货地址
export const reqgetshopaddress = (id) => requests({url:'/user/getshopaddress/'+id,method:"GET"});
//更新收货地址
export const requpdateshopaddress = (data) => requests({url:'/address/update',data,method:"POST"});
//删除收获地址
export const reqdeleteshopaddress = (id) => requests({url:'/address/delete/'+id,method:"POST"});
//添加收货地址
export const reqinsertshopaddress = (data) => requests({url:'/address/insert',data,method:"POST"});