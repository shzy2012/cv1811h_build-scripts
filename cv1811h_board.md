
cv1811h 开发板操作

```
点击电源键，开机按Enter进入uboot
mars_c906#

```

在uboot模式下配置如下
```bash
# 配置IP，保持与tftp服务器在同一个网段
setenv ipaddr 169.254.145.150
```
```bash
# 设置 tftp server 地址
setenv serverip 169.254.145.140
```

```bash
# 加载 os.itb 到 0x82000000
tftpboot 0x82000000 os.itb
```

```bash
# 将内核镜像加载到内存的指定地址处后启动内核
bootm 0x82000000
```




