module.exports = {
    //关闭eslint
    lintOnSave: false,
    //代理跨域
    devServer: {
        proxy: {
            '/api': {
                target: 'http://localhost:8080',
                pathReWrite: { "^/api": "" }
            }
        }
    }
}