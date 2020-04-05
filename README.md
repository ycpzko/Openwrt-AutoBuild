  >代码来自 https://github.com/P3TERX/Actions-OpenWrt  和 https://github.com/tete1030/openwrt-fastbuild-actions
# 自动化编译Openwrt
## 使用说明  

例如k2p
将.config重命名为 config.diff 放进 user/k2p/  
再将yml里改成 target: [k2p]  可以多机型 [k2p,p2w_619ac] 用逗号隔开  
自定义支持 patches 和custom.sh  位置 在user/k2p/  
default 默认配置 patches和custom.sh对所有配置生效  
另外支持files 大法 放进 user/k2p/files即可 同理default里的对所有机型生效  

**固件上传到分支和微信推送需要设置screts {SUPER_TOKEN} 和 {}**


