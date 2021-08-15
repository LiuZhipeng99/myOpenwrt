## [Lede](https://github.com/coolsnowwolf/lede)的自定义云编译

**[原项目](https://github.com/P3TERX/Actions-OpenWrt)** 含配置和进阶教程

[恩山的L大插件解释](https://www.right.com.cn/forum/thread-344825-1-1.html)

本地编译单个ipk[方法](https://jarviswwong.com/compile-ipk-separately-with-openwrt.html)，需先编译kernel和luci-base

自动收集ipkhttps://github.com/yfdoor/OpenWrt-Packages

centos8编译网易云解锁可能需要`yum install glibc-devel.i686 libgcc.i686 libstdc++-devel.i686`

编译经验：由于vps内存不足1G编译nodejs失败（qbtorrent更大），通过`du -l --max-depth=1 | sort -n`查看build_dir/target-mips下文件看到node文件夹有七百M（build_dir就有20G以上），把这个编译成功的文件夹替换到小vps上，两个主机传输：`tar cf - src_dir | ssh user@dst_host "cd /dst_dir && tar xvf -"` 
编译个ipk测试： ` make -j2 package/lean/luci-app-jd-dailybonus/compile ` ，还不行

关于编译结果用哪个bin文件，从名字也看得出，这里有关于[initramfs-kernel](https://blog.csdn.net/GK_Ph/article/details/85775737)的介绍
