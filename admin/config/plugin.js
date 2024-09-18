'use strict';

/** @type Egg.EggPlugin */
module.exports = {
  cors:{
    enable: true,
    package: 'egg-cors',
  },
  sequelize:{
    enable: true,
    package: 'egg-sequelize',
  },
  nunjucks: {
    enable: true,
    package: 'egg-view-nunjucks',
  },
  valparams : {
    enable : true,
    package: 'egg-valparams'
  },
  jwt : {
    enable: true,
    package: "egg-jwt"
  },
  redis : {
    enable: true,
    package: 'egg-redis',
  },
  tenpay: {
      enable: true,
      package: 'egg-tenpay'
  },
  io: {
      enable: true,
      package: 'egg-socket.io',
  },
};
