'use strict';

/**
 * @param {Egg.Application} app - egg application
 */
module.exports = app => {
  const { router, controller,io } = app;

  router.get('/admin',controller.admin.home.index)

  router.get('/admin/manager/delete/:id',controller.admin.manager.delete);
  router.get('/admin/manager/edit/:id',controller.admin.manager.edit);
  router.get('/admin/manager',controller.admin.manager.index);
  router.get('/admin/manager/create',controller.admin.manager.create);
  router.post('/admin/manager',controller.admin.manager.save);
  router.post('/admin/manager/:id',controller.admin.manager.update);

  router.get('/admin/login',controller.admin.home.login);
  router.post('/admin/loginevent',controller.admin.home.loginevent);
  router.get('/admin/logout', controller.admin.home.logout);

  router.get('/admin/user/delete/:id',controller.admin.user.delete);
  router.get('/admin/user/edit/:id',controller.admin.user.edit);
  router.get('/admin/user',controller.admin.user.index);
  router.get('/admin/user/create',controller.admin.user.create);
  router.post('/admin/user',controller.admin.user.save);
  router.post('/admin/user/:id',controller.admin.user.update);

  router.get('/admin/gift/delete/:id',controller.admin.gift.delete);
  router.get('/admin/gift/edit/:id',controller.admin.gift.edit);
  router.get('/admin/gift/create',controller.admin.gift.create);
  router.post('/admin/gift',controller.admin.gift.save);
  router.get('/admin/gift', controller.admin.gift.index);
  router.post('/admin/gift/:id',controller.admin.gift.update);

  router.post('/admin/upload', controller.admin.common.upload);

  router.get('/admin/order/delete/:id',controller.admin.order.delete);
  router.get('/admin/order', controller.admin.order.index);

  router.get('/admin/live', controller.admin.live.index);

  router.get('/admin/live/look/:id', controller.admin.live.look);
  router.get('/admin/live/gift/:id', controller.admin.live.gift);
  router.get('/admin/live/comment/:id', controller.admin.live.comment);
  router.get('/admin/live/close/:id', controller.admin.live.close);
  router.get('/admin/live/delete/:id',controller.admin.live.delete);

  // 用户注册
  router.post('/api/reg', controller.api.user.reg);
  // 用户登录
  router.post('/api/login', controller.api.user.login);
  // 退出登录
  router.post('/api/logout', controller.api.user.logout);
  // 获取当前用户信息
  router.get('/api/user/info', controller.api.user.info);
  // 创建直播间
  router.post('/api/live/create', controller.api.live.save);
  // 修改直播间状态
  router.post('/api/live/changestatus', controller.api.live.changeStatus);
  // 直播间列表
  router.get('/api/live/list/:page',controller.api.live.list)
  // 查看直播间
  router.get('/api/live/read/:id', controller.api.live.read);

  // 微信支付
  router.post('/api/gift/wxpay', controller.api.gift.wxpay);
  // 微信支付回调
  router.post('/api/gift/notify', app.middleware.tenpay('pay', app), controller.api.gift.notify);

  // 礼物列表
  router.get('/api/gift/list',controller.api.gift.list)
  // 上传图片
  router.post('/api/upload', controller.api.common.upload);


  io.of('/').route('joinLive',io.controller.nsp.joinLive)
  io.of('/').route('leaveLive',io.controller.nsp.leaveLive)
  io.of('/').route('comment',io.controller.nsp.comment)
  io.of('/').route('gift',io.controller.nsp.gift)

};
