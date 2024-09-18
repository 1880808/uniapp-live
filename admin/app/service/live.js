'use strict';

const await = require('await-stream-ready/lib/await');

const Service = require('egg').Service;

class LiveService extends Service {
    // 直播间是否存在
    async exist(id){
        const { app } = this
        return await app.model.Live.findOne({
            where:{
                id
            }
        })
    }
    // 是否处于开播中
    async checkStatus(id) {
        let live = await this.exist(id)
        if(!live){
            return '直播间不存在'
        }

        if(live.status == 0){
            return '直播间未开播'
        }

        if(live.status == 3){
            return '直播间已结束'
        }

        return false
    }
}

module.exports = LiveService;
