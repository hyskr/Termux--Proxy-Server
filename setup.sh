sed -i 's@^\(deb.*stable main\)$@#\1\ndeb https://mirrors.tuna.tsinghua.edu.cn/termux/apt/termux-main stable main@' $PREFIX/etc/apt/sources.list
apt update && apt upgrade
mkdir -p $PREFIX/etc/apt/sources.list.d
echo "deb [trusted=yes] http://termux.cpolar.com termux extras" >> $PREFIX/etc/apt/sources.list.d/cpolar.list
pkg update
pkg install vim openssh cpolar termux-services tinyproxy -y
mkdir -p ~/.termux/boot/
echo 'termux-wake-lock; sshd; tinyproxy -c ~/tinyproxy.conf; cpolar start-all -daemon=on -processMode=single -dashboard=on -config=/data/data/com.termux/files/usr/etc/cpolar/cpolar.yml -log=stdout;' > '~/.termux/boot/startup'
