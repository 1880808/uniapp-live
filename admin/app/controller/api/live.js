'use strict';

const Controller = require('egg').Controller;
const await = require('await-stream-ready/lib/await');
// 引入模块
const md5 = require('md5');
class LiveController extends Controller {
    // 创建直播间
    async save() {
        let { ctx,app } = this;
        let user_id = ctx.authUser.id

        // 参数验证
        ctx.validate({
            title:{
                required:true,
                type:"string",
                desc:"直播间标题"
            },
            cover:{
                required:false,
                type:"string",
                desc:"直播间封面"
            }
        })

        let {
            title,cover
        } = ctx.request.body

        // 生成唯一id
        let key = ctx.randomString(20)

        let res = await app.model.Live.create({
            title,
            cover,
            key,
            user_id
        })

        // 生成签名
        let sign = this.sign(key)

        ctx.apiSuccess({
            data:res,
            sign
        })

    }

    // 生成签名
    sign(key){
        let { ctx,app } = this
        const secret = app.config.mediaServer.auth.secret
        let expire = parseInt((Date.now() + 100000000) / 1000)
        let hashValue = md5(`/live/${key}-${expire}-${secret}`)
        return `${expire}-${hashValue}`
    }


    // 修改直播间状态
    async changeStatus(){
        let { ctx,app } = this
        let user_id = ctx.authUser.id

        // 参数验证
        ctx.validate({
            id:{
                type:"int",
                required:true,
                desc:"直播间ID"
            },
            type:{
                type:"string",
                required:true,
                range:{
                    in:['play','pause','stop']
                }
            }
        })

        let  { id,type } = ctx.request.body

        let live = await app.model.Live.findOne({
            where:{
                id,
                user_id
            }
        })

        if(!live){
            return ctx.apiFail('该直播间不存在')
        }

        if(live.status === 3){
            return ctx.apiFail('该直播间已结束')
        }

        const status = {
            play:1,
            pause:2,
            stop:3
        }

        live.status = status[type]
        await live.save()

        ctx.apiSuccess('ok')
    }

    // 直播间列表
    async list() {
        let { ctx, app } = this;
        ctx.validate({
            page: {
                required: true,
                desc: "页码",
                type: "int"
            }
        });

        let page = ctx.params.page
        let limit = 10
        let offset = (page - 1) * limit

        let rows = await app.model.Live.findAll({
            limit,offset
        })

        ctx.apiSuccess(rows)
    }

    async read(){
        const { ctx,app } = this

        ctx.validate({
            id: {
                required: true,
                desc: "直播间ID",
                type: "int"
            }
        });

        let id = ctx.params.id

        let live = await app.model.Live.findOne({
            where:{
                id
            },
            include:[{
                model:app.model.User,
                attributes:['id','username','avatar']
            }]
        })

        if(!live){
            return ctx.apiFail('该直播间不存在')
        }

        // 生成签名
        let sign = null

        // 直播未结束
        if(live.status !== 3){
            sign = this.sign(live.key)
        }

        ctx.apiSuccess({
            data:live,
            sign
        })
    }
}

module.exports = LiveController;
