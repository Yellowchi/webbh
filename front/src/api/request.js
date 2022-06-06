//对axios进行二次封装
import axios from 'axios';

const requests = axios.create({
    baseURL: '/api',
    timeout: 5000,
})
//请求拦截器
requests.interceptors.request.use((config) => {
    //包含请求头Header
    return config;
});
//响应拦截器
requests.interceptors.response.use((res) => {
    return res;
}, (err) => {
    return Promise.reject(new Error(err.message));
});




//对外暴露
export default requests;