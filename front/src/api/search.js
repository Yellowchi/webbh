import requests from "@/api/request";
//ζ₯ζΎεε
export const reqsearchgoods = (str) => requests({url:'/goods/search?searchinfo='+str,method:"GET"});