module.exports = (option,app)=>{
    return async (ctx,next)=>{
        if(!ctx.session.auth){
            ctx.toast('请先登录','danger')
            return ctx.redirect('/admin/login')
        }
        await next()

        if(ctx.status === 404){
            await ctx.pageFail('页面不存在')
        }
    }
}