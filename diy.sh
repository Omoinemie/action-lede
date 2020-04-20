#!/bin/bash
#=================================================
# Description: DIY script
# Lisence: MIT
# Author: P3TERX
# Blog: https://p3terx.com
#=================================================
# Modify default IP
git clone https://github.com/fw876/helloworld package/lean
sed -i 's/192.168.1.1/192.168.1.1/g' package/base-files/files/bin/config_generate
echo "src-git helloworld https://github.com/fw876/helloworld" >> feeds.conf.default

./scripts/feeds update -a && ./scripts/feeds install -a
