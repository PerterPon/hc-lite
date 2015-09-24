
# /*
#   commom
# */
# Author: yuhan.wyh<yuhan.wyh@alibaba-inc.com>
# Create: Tue Sep 08 2015 06:14:34 GMT+0800 (CST)
# 

"use strict"

path = require 'path'

fs   = require 'fs'

os   = require 'options-stream'

module.exports =
  getConfig : ( dir ) ->
    baseCfg = path.join dir, './etc/config.default.yaml'
    envCfg  = path.join dir, './etc/config.yaml'
    if false is fs.existsSync baseCfg
      throw new Error 'App Config File Was Not Found!'

    if false is fs.existsSync envCfg
      envCfg = {}
    os baseCfg, envCfg
