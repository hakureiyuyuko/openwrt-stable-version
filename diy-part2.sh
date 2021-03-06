#!/bin/bash
#============================================================
# https://github.com/P3TERX/Actions-OpenWrt
# File name: diy-part2.sh
# Description: OpenWrt DIY script part 2 (After Update feeds)
# Lisence: MIT
# Author: P3TERX
# Blog: https://p3terx.com
#============================================================

# Modify default IP
#sed -i 's/192.168.1.1/192.168.50.5/g' package/base-files/files/bin/config_generate
rm -rf ./package/lean/luci-theme-argon
rm -rf ./package/lienol/v2ray
rm -rf ./package/lienol/v2ray-plugin
rm -rf ./feeds/packages/net/smartdns
rm -rf ./feeds/packages/net/https-dns-proxy
wget  https://raw.githubusercontent.com/coolsnowwolf/packages/master/lang/golang/golang/Makefile -O ./feeds/packages/lang/golang/golang/Makefile
wget  https://raw.githubusercontent.com/coolsnowwolf/lede/master/package/lean/v2ray/Makefile -O ./package/lean/v2ray/Makefile
wget  https://raw.githubusercontent.com/coolsnowwolf/lede/master/package/lean/v2ray-plugin/Makefile -O ./package/lean/v2ray-plugin/Makefile
# curl -fsSL  https://raw.githubusercontent.com/firkerword/v2fly/master/v2ray-plugin/Makefile > ./package/lean/v2ray-plugin/Makefile
# curl -fsSL  https://raw.githubusercontent.com/firkerword/v2fly/master/v2ray/Makefile > ./package/lean/v2ray/Makefile
# curl -fsSL  https://raw.githubusercontent.com/Lienol/openwrt-packages/19.07/net/https-dns-proxy/files/https-dns-proxy.init > ./feeds/packages/net/https-dns-proxy/files/https-dns-proxy.init
# cp -r feeds/lienol/lienol/luci-app-passwall feeds/diy
# cp -r feeds/lienol/package/{chinadns-ng,trojan-go,syncthing,tcping} feeds/diy/vssr
# rm -rf ./feeds/{lienol,lienol.tmp}
