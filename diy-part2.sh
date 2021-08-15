#!/bin/bash
#
# Copyright (c) 2019-2020 P3TERX <https://p3terx.com>
#
# This is free software, licensed under the MIT License.
# See /LICENSE for more information.
#
# https://github.com/P3TERX/Actions-OpenWrt
# File name: diy-part2.sh
# Description: OpenWrt DIY script part 2 (After Update feeds)
#

# Modify default IP
#sed -i 's/192.168.1.1/192.168.50.5/g' package/base-files/files/bin/config_generate


#/bin/bash
# This is free software, lisence use MIT.
# Copyright (C) https://github.com/yfdoor

# Define IP
# sed -i 's/192.168.1.1/192.168.100.1/g' package/base-files/files/bin/config_generate

# Define Default
# cat > package/yfdoorg/yfdoor/default-settings/files/zzz-default-settings <<-EOF
# #!/bin/sh    
#     # set time zone
#     uci set system.@system[0].timezone=CST-8
#     uci set system.@system[0].zonename=Asia/Shanghai
#     uci commit system
    
#     # set distfeeds
#     cp /etc/opkg/distfeeds.conf /etc/opkg/distfeeds.conf_BK
#     sed -i 's#http://downloads.openwrt.org#http://mirrors.tuna.tsinghua.edu.cn/openwrt#g' /etc/opkg/distfeeds.conf
#     sed -i '/yfdoor/d' /etc/opkg/distfeeds.conf
    
#     # set firewall
#     sed -i '/REDIRECT --to-ports 53/d' /etc/firewall.user
#     echo "iptables -t nat -A PREROUTING -p udp --dport 53 -j REDIRECT --to-ports 53" >> /etc/firewall.user
#     echo "iptables -t nat -A PREROUTING -p tcp --dport 53 -j REDIRECT --to-ports 53" >> /etc/firewall.user
    
#     # Others
#     sed -i '/log-facility/d' /etc/dnsmasq.conf
#     echo "log-facility=/dev/null" >> /etc/dnsmasq.conf
#     sed -i 's/cbi.submit\"] = true/cbi.submit\"] = \"1\"/g' /usr/lib/lua/luci/dispatcher.lua
#     echo 'hsts=0' > /root/.wgetrc
    
#     rm -rf /tmp/luci*
#     exit 0
# EOF
