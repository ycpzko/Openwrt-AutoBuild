#!/bin/bash

echo "Test custom.sh"

./scripts/feeds update -a
./scripts/feeds install -a

#更改后台登陆ip为：192.168.6.254
sed -i 's/192.168.1.1/192.168.6.254/g' package/base-files/files/bin/config_generate

