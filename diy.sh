#!/bin/bash
#=================================================
# Description: DIY script
# Lisence: MIT
# Author: P3TERX
# Blog: https://p3terx.com
#=================================================
# Modify default IP
sed -i 's/192.168.1.1/192.168.18.1/g' package/base-files/files/bin/config_generate
echo 'src-git helloworld https://github.com/fw876/helloworld' >>feeds.conf.default

#添加额外非必须软件包
git clone https://github.com/zzsj0928/luci-app-pushbot.git package/luci-app-pushbot
git clone -b lede https://github.com/pymumu/luci-app-smartdns.git package/luci-app-smartdns
git clone https://github.com/xiaoqingfengATGH/luci-theme-infinityfreedom package/luci-theme-infinityfreedom
