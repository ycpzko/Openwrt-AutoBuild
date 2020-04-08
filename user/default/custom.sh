#!/bin/bash

echo "Test custom.sh"

./scripts/feeds update -a
./scripts/feeds install -a

#更改后台登陆ip为：10.0.0.1
sed -i 's/192.168.1.1/10.0.0.1/g' package/base-files/files/bin/config_generate

#修改openwrt_release版本
sed -i 's#R[0-9].*\('\''\)#R20.4.8\1#g'   package/lean/default-settings/files/zzz-default-settings
sed -i 's/https:/R20.4.8/g' package/lean/default-settings/files/zzz-default-settings
sed -i 's/http:/snapshots/g' package/lean/default-settings/files/zzz-default-settings
sed -i 's/openwrt.proxy.ustclug.org/op.hyird.xyz/g' package/lean/default-settings/files/zzz-default-settings
#去除密码
sed  -i '/^sed.*shadow$/d'  package/lean/default-settings/files/zzz-default-settings

