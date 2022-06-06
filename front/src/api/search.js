import requests from "@/api/request";
//查找商品
export const reqsearchgoods = (str) => requests({url:'/goods/search?searchinfo='+str,method:"GET"});