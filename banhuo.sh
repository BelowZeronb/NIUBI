#!/bin/bash
#read-multiple
#蓝底白字
echo -e "\033[44;37m 欢迎使用0℃-ICE和平shell防封 \033[0m"
echo -e "\033[44;37m 版本构建时间:3.25 \033[0m"
echo -e "\033[44;37m 版本号:0℃-b4基础半火\033[0m"
echo "0℃—验证"
sleep 1
echo 初始化成功
sleep 2
date1="2023-3-30 23:59:59"
#到期时间
date2="`date +%Y-%m-%d %H:%m:%s`"
#判断系统时间
 
t1=`date -d "$date1" +%s`
t2=`date -d "$date2" +%s`
 
if [ $t1 -gt $t2 ]; then
    echo "过期时间至:"
    echo -e "\033[47;30m $date1 \033[0m"
elif [ $t1 -eq $t2 ]; then
    echo "$date1 == $date2"
else
echo -e '\033[1;36;m         0℃-脚本已到期，请联系BelowZero                         \033[0m'
echo "过期时间至:"
    echo -e "\033[47;30m $date1 \033[0m"
    echo 外部交流q群:1151698121
exit
fi

echo -e "\033[45;37m 开始清理iptables规则 \033[0m"
iptables -F
iptables -t nat -F 
iptables -X
iptables -Z
ip6tables -F
ip6tables -X
ip6tables -Z
ip6tables=/system/bin/ip6tables
iptables=/system/bin/iptables
uid=`cat /data/system/packages.list | grep com.tencent.tmgp.pubgmhd | awk '{print $2}'`
echo 抓取和平精英uid成功，若大量英文报错请反馈
echo -e "\033[46;30m 0℃修复三方环境异常 \033[0m"
echo 16384 > /proc/sys/fs/inotify/max_queued_events
echo 128 > /proc/sys/fs/inotify/max_user_instances
echo 8192 > /proc/sys/fs/inotify/max_user_watches
echo 修复成功啦
echo -e "\033[41;37m 0℃防封开始加载 \033[0m"
sleep 1
echo -e "\033[46;30m开始重写部分特殊ip\033[0m"
#
iptables -t nat -A OUTPUT -d 109.244.228.213 -j DNAT --to-destination 182.254.116.117
iptables -t nat -A OUTPUT -d 111.30.169.110 -j DNAT --to-destination 182.254.116.117
iptables -t nat -A OUTPUT -d 111.30.169.81 -j DNAT --to-destination 182.254.116.117
iptables -t nat -A OUTPUT -d 111.30.185.235 -j DNAT --to-destination 182.254.116.117
iptables -t nat -A OUTPUT -d 111.30.186.37 -j DNAT --to-destination 182.254.116.117
iptables -t nat -A OUTPUT -d 114.221.149.1 -j DNAT --to-destination 182.254.116.117
iptables -t nat -A OUTPUT -d 117.89.177.167 -j DNAT --to-destination 182.254.116.117
iptables -t nat -A OUTPUT -d 122.96.96.1 -j DNAT --to-destination 182.254.116.117
iptables -t nat -A OUTPUT -d 129.226.102.1 -j DNAT --to-destination 182.254.116.117
iptables -t nat -A OUTPUT -d 129.226.103.1 -j DNAT --to-destination 182.254.116.117
iptables -t nat -A OUTPUT -d 153.3.150.78 -j DNAT --to-destination 182.254.116.117
iptables -t nat -A OUTPUT -d 153.37.101.103 -j DNAT --to-destination 182.254.116.117
iptables -t nat -A OUTPUT -d 175.27.203.1 -j DNAT --to-destination 182.254.116.117
iptables -t nat -A OUTPUT -d 175.27.204.1 -j DNAT --to-destination 182.254.116.117
iptables -t nat -A OUTPUT -d 180.102.211.1 -j DNAT --to-destination 182.254.116.117
iptables -t nat -A OUTPUT -d 180.109.156.1 -j DNAT --to-destination 182.254.116.117
iptables -t nat -A OUTPUT -d 180.109.171.1 -j DNAT --to-destination 182.254.116.117
iptables -t nat -A OUTPUT -d 182.50.10.74 -j DNAT --to-destination 182.254.116.117
iptables -t nat -A OUTPUT -d 220.194.120.1 -j DNAT --to-destination 182.254.116.117
iptables -t nat -A OUTPUT -d 222.94.109.22 -j DNAT --to-destination 182.254.116.117
iptables -t nat -A OUTPUT -d 36.155.186.200 -j DNAT --to-destination 182.254.116.117
iptables -t nat -A OUTPUT -d 36.155.202.1 -j DNAT --to-destination 182.254.116.117
iptables -t nat -A OUTPUT -d 36.155.228.1 -j DNAT --to-destination 182.254.116.117
iptables -t nat -A OUTPUT -d 36.155.240.1 -j DNAT --to-destination 182.254.116.117
iptables -t nat -A OUTPUT -d 36.155.245.1 -j DNAT --to-destination 182.254.116.117
iptables -t nat -A OUTPUT -d 36.155.249.1 -j DNAT --to-destination 182.254.116.117
iptables -t nat -A OUTPUT -d 36.155.251.15 -j DNAT --to-destination 182.254.116.117
iptables -t nat -A OUTPUT -d 42.81.1.1 -j DNAT --to-destination 182.254.116.117
iptables -t nat -A OUTPUT -d 43.137.190.80 -j DNAT --to-destination 182.254.116.117
iptables -t nat -A OUTPUT -d 49.51.1.1 -j DNAT --to-destination 182.254.116.117
iptables -t nat -A OUTPUT -d 59.83.207.176 -j DNAT --to-destination 182.254.116.117
iptables -t nat -A OUTPUT -d 60.28.172.70 -j DNAT --to-destination 182.254.116.117
iptables -t nat -A OUTPUT -d 60.29.239.218 -j DNAT --to-destination 182.254.116.117
echo -e "\033[46;30m开始处理特殊域名\033[0m"
#特殊域名
iptables -t nat -A OUTPUT -d nj.cschannel.anticheatexpert.com -j DNAT --to-destination 182.254.116.117
iptables -t nat -A OUTPUT -d ipv6.mainconn.gamesafe.qq.com -j DNAT --to-destination 182.254.116.117
iptables -t nat -A OUTPUT -d ipv6.mainconn.anticheatexpert.com -j DNAT --to-destination 182.254.116.117
iptables -t nat -A OUTPUT -d cs.mbgame.gamesafe.qq.com -j DNAT --to-destination 182.254.116.117
iptables -t nat -A OUTPUT -d cs.mbgame.anticheatexpert.com -j DNAT --to-destination 182.254.116.117
iptables -t nat -A OUTPUT -d cs.mainconn.gamesafe.qq.com -j DNAT --to-destination 182.254.116.117
iptables -t nat -A OUTPUT -d down.anticheatexpert.com -j DNAT --to-destination 182.254.116.117
echo -e "\033[46;30m特殊处理端口\033[0m"
echo tcp＋udp数据执行中……
echo "开始处理端口①/④"
#5692   8081   17005可以直接拒绝
iptables -t nat -A PREROUTING -p tcp --dport 443 -j REDIRECT --to-ports 9966
iptables -t nat -A PREROUTING -p tcp --dport 80 -j REDIRECT --to-ports 9966
iptables -t nat -A PREROUTING -p tcp --dport 10012 -j REDIRECT --to-ports 9966
iptables -t nat -A PREROUTING -p tcp --dport 5692 -j REDIRECT --to-ports 9966
iptables -t nat -A PREROUTING -p tcp --dport 17005 -j REDIRECT --to-ports 9966
iptables -t nat -A PREROUTING -p tcp --dport 65010 -j REDIRECT --to-ports 9966
iptables -t nat -A PREROUTING -p tcp --dport 1884 -j REDIRECT --to-ports 9966
iptables -t nat -A PREROUTING -p tcp --dport 7889 -j REDIRECT --to-ports 9966
iptables -t nat -A PREROUTING -p tcp --dport 8081 -j REDIRECT --to-ports 9966
iptables -t nat -A PREROUTING -p tcp --dport 8085 -j REDIRECT --to-ports 9966
iptables -t nat -A PREROUTING -p tcp --dport 31003 -j REDIRECT --to-ports 9966
iptables -t nat -A PREROUTING -p tcp --dport 11762 -j REDIRECT --to-ports 9966
iptables -t nat -A PREROUTING -p tcp --dport 21762 -j REDIRECT --to-ports 9966
iptables -t nat -A PREROUTING -p tcp --dport 31762 -j REDIRECT --to-ports 9966
iptables -t nat -A PREROUTING -p tcp --dport 41762 -j REDIRECT --to-ports 9966
iptables -t nat -A PREROUTING -p tcp --dport 51762 -j REDIRECT --to-ports 9966
iptables -t nat -A PREROUTING -p tcp --dport 61762 -j REDIRECT --to-ports 9966
iptables -t nat -A PREROUTING -p tcp --dport 13861 -j REDIRECT --to-ports 9966
iptables -t nat -A PREROUTING -p tcp --dport 23861 -j REDIRECT --to-ports 9966
iptables -t nat -A PREROUTING -p tcp --dport 33861 -j REDIRECT --to-ports 9966
iptables -t nat -A PREROUTING -p tcp --dport 43861 -j REDIRECT --to-ports 9966
iptables -t nat -A PREROUTING -p tcp --dport 53861 -j REDIRECT --to-ports 9966
iptables -t nat -A PREROUTING -p tcp --dport 63861 -j REDIRECT --to-ports 9966
iptables -t nat -A PREROUTING -p tcp --dport 10851 -j REDIRECT --to-ports 9966
echo "开始处理端口②/④"
#udp
iptables -t nat -A PREROUTING -p udp --dport 443 -j REDIRECT --to-ports 9966
iptables -t nat -A PREROUTING -p udp --dport 80 -j REDIRECT --to-ports 9966
iptables -t nat -A PREROUTING -p udp --dport 10012 -j REDIRECT --to-ports 9966
iptables -t nat -A PREROUTING -p udp --dport 5692 -j REDIRECT --to-ports 9966
iptables -t nat -A PREROUTING -p udp --dport 17005 -j REDIRECT --to-ports 9966
iptables -t nat -A PREROUTING -p udp --dport 65010 -j REDIRECT --to-ports 9966
iptables -t nat -A PREROUTING -p udp --dport 1884 -j REDIRECT --to-ports 9966
iptables -t nat -A PREROUTING -p udp --dport 7889 -j REDIRECT --to-ports 9966
iptables -t nat -A PREROUTING -p udp --dport 8081 -j REDIRECT --to-ports 9966
iptables -t nat -A PREROUTING -p udp --dport 8085 -j REDIRECT --to-ports 9966
iptables -t nat -A PREROUTING -p udp --dport 31003 -j REDIRECT --to-ports 9966
iptables -t nat -A PREROUTING -p udp --dport 11762 -j REDIRECT --to-ports 9966
iptables -t nat -A PREROUTING -p udp --dport 21762 -j REDIRECT --to-ports 9966
iptables -t nat -A PREROUTING -p udp --dport 31762 -j REDIRECT --to-ports 9966
iptables -t nat -A PREROUTING -p udp --dport 41762 -j REDIRECT --to-ports 9966
iptables -t nat -A PREROUTING -p udp --dport 51762 -j REDIRECT --to-ports 9966
iptables -t nat -A PREROUTING -p udp --dport 61762 -j REDIRECT --to-ports 9966
iptables -t nat -A PREROUTING -p udp --dport 13861 -j REDIRECT --to-ports 9966
iptables -t nat -A PREROUTING -p udp --dport 23861 -j REDIRECT --to-ports 9966
iptables -t nat -A PREROUTING -p udp --dport 33861 -j REDIRECT --to-ports 9966
iptables -t nat -A PREROUTING -p udp --dport 43861 -j REDIRECT --to-ports 9966
iptables -t nat -A PREROUTING -p udp --dport 53861 -j REDIRECT --to-ports 9966
iptables -t nat -A PREROUTING -p udp --dport 63861 -j REDIRECT --to-ports 9966
iptables -t nat -A PREROUTING -p udp --dport 10851 -j REDIRECT --to-ports 9966
echo "开始处理端口③/④"
#分
iptables -t nat -A OUTPUT -d 0.0.0.0 -p tcp --dport 443 -j DNAT --to-destination 0.0.0.0:9966
iptables -t nat -A OUTPUT -d 0.0.0.0 -p tcp --dport 80 -j DNAT --to-destination 0.0.0.0:9966 
iptables -t nat -A OUTPUT -d 0.0.0.0 -p tcp --dport 10012 -j DNAT --to-destination 0.0.0.0:9966
iptables -t nat -A OUTPUT -d 0.0.0.0 -p tcp --dport 5692 -j DNAT --to-destination 0.0.0.0:9966
iptables -t nat -A OUTPUT -d 0.0.0.0 -p tcp --dport 65010 -j DNAT --to-destination 0.0.0.0:9966
iptables -t nat -A OUTPUT -d 0.0.0.0 -p tcp --dport 17005 -j DNAT --to-destination 0.0.0.0:9966
iptables -t nat -A OUTPUT -d 0.0.0.0 -p tcp --dport 1884 -j DNAT --to-destination 0.0.0.0:9966
iptables -t nat -A OUTPUT -d 0.0.0.0 -p tcp --dport 7889 -j DNAT --to-destination 0.0.0.0:9966
iptables -t nat -A OUTPUT -d 0.0.0.0 -p tcp --dport 8081 -j DNAT --to-destination 0.0.0.0:9966
iptables -t nat -A OUTPUT -d 0.0.0.0 -p tcp --dport 8085 -j DNAT --to-destination 0.0.0.0:9966
iptables -t nat -A OUTPUT -d 0.0.0.0 -p tcp --dport 31003 -j DNAT --to-destination 0.0.0.0:9966
iptables -t nat -A OUTPUT -d 0.0.0.0 -p tcp --dport 11762 -j DNAT --to-destination 0.0.0.0:9966
iptables -t nat -A OUTPUT -d 0.0.0.0 -p tcp --dport 21762 -j DNAT --to-destination 0.0.0.0:9966
iptables -t nat -A OUTPUT -d 0.0.0.0 -p tcp --dport 31762 -j DNAT --to-destination 0.0.0.0:9966
iptables -t nat -A OUTPUT -d 0.0.0.0 -p tcp --dport 41762 -j DNAT --to-destination 0.0.0.0:9966
iptables -t nat -A OUTPUT -d 0.0.0.0 -p tcp --dport 51762 -j DNAT --to-destination 0.0.0.0:9966
iptables -t nat -A OUTPUT -d 0.0.0.0 -p tcp --dport 61762 -j DNAT --to-destination 0.0.0.0:9966
iptables -t nat -A OUTPUT -d 0.0.0.0 -p tcp --dport 13861 -j DNAT --to-destination 0.0.0.0:9966
iptables -t nat -A OUTPUT -d 0.0.0.0 -p tcp --dport 23861 -j DNAT --to-destination 0.0.0.0:9966
iptables -t nat -A OUTPUT -d 0.0.0.0 -p tcp --dport 33861 -j DNAT --to-destination 0.0.0.0:9966
iptables -t nat -A OUTPUT -d 0.0.0.0 -p tcp --dport 43861 -j DNAT --to-destination 0.0.0.0:9966
iptables -t nat -A OUTPUT -d 0.0.0.0 -p tcp --dport 53861 -j DNAT --to-destination 0.0.0.0:9966
iptables -t nat -A OUTPUT -d 0.0.0.0 -p tcp --dport 63861 -j DNAT --to-destination 0.0.0.0:9966
iptables -t nat -A OUTPUT -d 0.0.0.0 -p tcp --dport 10851 -j DNAT --to-destination 0.0.0.0:9966
#udp
echo "开始处理端口④/④"
iptables -t nat -A OUTPUT -d 0.0.0.0 -p udp --dport 443 -j DNAT --to-destination 0.0.0.0:9966
iptables -t nat -A OUTPUT -d 0.0.0.0 -p udp --dport 80 -j DNAT --to-destination 0.0.0.0:9966 
iptables -t nat -A OUTPUT -d 0.0.0.0 -p udp --dport 10012 -j DNAT --to-destination 0.0.0.0:9966
iptables -t nat -A OUTPUT -d 0.0.0.0 -p udp --dport 5692 -j DNAT --to-destination 0.0.0.0:9966
iptables -t nat -A OUTPUT -d 0.0.0.0 -p udp --dport 65010 -j DNAT --to-destination 0.0.0.0:9966
iptables -t nat -A OUTPUT -d 0.0.0.0 -p udp --dport 17005 -j DNAT --to-destination 0.0.0.0:9966
iptables -t nat -A OUTPUT -d 0.0.0.0 -p udp --dport 1884 -j DNAT --to-destination 0.0.0.0:9966
iptables -t nat -A OUTPUT -d 0.0.0.0 -p udp --dport 7889 -j DNAT --to-destination 0.0.0.0:9966
iptables -t nat -A OUTPUT -d 0.0.0.0 -p udp --dport 8081 -j DNAT --to-destination 0.0.0.0:9966
iptables -t nat -A OUTPUT -d 0.0.0.0 -p udp --dport 8085 -j DNAT --to-destination 0.0.0.0:9966
iptables -t nat -A OUTPUT -d 0.0.0.0 -p udp --dport 31003 -j DNAT --to-destination 0.0.0.0:9966
iptables -t nat -A OUTPUT -d 0.0.0.0 -p udp --dport 11762 -j DNAT --to-destination 0.0.0.0:9966
iptables -t nat -A OUTPUT -d 0.0.0.0 -p udp --dport 21762 -j DNAT --to-destination 0.0.0.0:9966
iptables -t nat -A OUTPUT -d 0.0.0.0 -p udp --dport 31762 -j DNAT --to-destination 0.0.0.0:9966
iptables -t nat -A OUTPUT -d 0.0.0.0 -p udp --dport 41762 -j DNAT --to-destination 0.0.0.0:9966
iptables -t nat -A OUTPUT -d 0.0.0.0 -p udp --dport 51762 -j DNAT --to-destination 0.0.0.0:9966
iptables -t nat -A OUTPUT -d 0.0.0.0 -p udp --dport 61762 -j DNAT --to-destination 0.0.0.0:9966
iptables -t nat -A OUTPUT -d 0.0.0.0 -p udp --dport 13861 -j DNAT --to-destination 0.0.0.0:9966
iptables -t nat -A OUTPUT -d 0.0.0.0 -p udp --dport 23861 -j DNAT --to-destination 0.0.0.0:9966
iptables -t nat -A OUTPUT -d 0.0.0.0 -p udp --dport 33861 -j DNAT --to-destination 0.0.0.0:9966
iptables -t nat -A OUTPUT -d 0.0.0.0 -p udp --dport 43861 -j DNAT --to-destination 0.0.0.0:9966
iptables -t nat -A OUTPUT -d 0.0.0.0 -p udp --dport 53861 -j DNAT --to-destination 0.0.0.0:9966
iptables -t nat -A OUTPUT -d 0.0.0.0 -p udp --dport 63861 -j DNAT --to-destination 0.0.0.0:9966
iptables -t nat -A OUTPUT -d 0.0.0.0 -p udp --dport 10851 -j DNAT --to-destination 0.0.0.0:9966
echo -e "\033[46;30m 0℃和平防禁网 \033[0m"
echo 反cs，nj域名保护导致的禁网
rm -r /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp
rm -r /data/user/0/com.tencent.tmgp.pubgmhd/files/ano_tmp
rm -rf /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp
rm -rf /data/user/0/com.tencent.tmgp.pubgmhd/files/ano_tmp
echo -e "\033[46;30m加载验证地址\033[0m"
echo 若浏览器访问
echo qq.com或www.baidu.com或m.baidu.com
echo 任意一个网站无法进入即防封生效
echo 请手动验证
iptables -I OUTPUT -p all -m string --string "qq.com" --algo bm -j REJECT
iptables -I OUTPUT -p all -m string --string "m.baidu.com" --algo bm -j REJECT
iptables -I OUTPUT -p all -m string --string "www.baidu.com" --algo bm -j REJECT
echo "-----------------------------------------------------"
endDate=`date +"%Y-%m-%d %H:%M:%S"`
echo "★[$endDate] 0℃-北京时间"
echo "-----------------------------------------------------"
echo -n "你的设备："
getprop ro.product.brand
echo -n "设备类型："
getprop ro.product.model
echo 请检查防禁网改机型模块是否生效
