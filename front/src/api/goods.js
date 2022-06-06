import requests from "@/api/request";
//修改商品信息
export const reqchangegoodsinfo = (data) => requests({url:'/goods/update',data,method:"POST"});
//删除商品信息
export const reqdeletegoodsinfo = (id) => requests({url:'/goods/delete/'+id,method:"POST"});
//获取商品信息根据商品id
export const reqgetgoodsinfobygoodsid = (id) => requests({url:'/goods/getbyid/'+id,method:"GET"});

