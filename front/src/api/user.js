import requests from "./request"
//登录
export const reqlogin = (data) => requests({url:'/user/login',data, method:"POST"});
//注册
export const reqregister = (data) => requests({url:'/user/register',data,method:"POST"});
//获取用户个人信息
export const reqgetuserinfo = (id) => requests({url:'/user/getuserinfo/'+id,method:"GET"});
//修改用户个人信息
export const requpdateuserinfo = (data) => requests({url:'/user/update',data,method:"POST"});
//获取用户buyerid&sellerid
export const reqgetid = (id) => requests({url:'/user/getid/'+id,method:"GET"});
//获取货物信息
export const reqgetgoodsinfo = (id) => requests({url:'/user/getgoodsinfo/'+id,method:"GET"});
//添加商品
export const reqaddgoodsinfo = (data) => requests({url:'/user/addgoodsinfo',data,method:"POST"});
//获取所有货物信息
export const reqgetallgoods = () => requests({url:'/user/getallgoods',method:"GET"});