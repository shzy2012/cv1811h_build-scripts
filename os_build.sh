#!/usr/bin/env bash

# Ubuntu
# sudo apt-get install u-boot-tools
# sudo apt-get install device-tree-compiler

# MacOS
# brew install u-boot-tools
# brew install dtc

# 测试安装情况
# $ mkimage --version
# mkimage version 2023.04

# $ dtc --version
# Version: DTC 1.7.0


# 制作 dts->dtb
dtc -I dts -O dtb -o cv1811h.dtb cv1811h.dts

# 压缩 os.bin.gz
gzip -c os.bin > os.bin.gz

# 制作 its->its
mkimage -f os.its os.itb

# 复制 os.itb 到 tftpboot 目录
# scp os.itb tftpboot路径


