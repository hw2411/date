wget https://github.com/fatedier/frp/releases/download/v0.38.0/frp_0.38.0_linux_amd64.tar.gz
tar -xzvf frp_0.38.0_linux_amd64.tar.gz
cd frp_0.38.0_linux_amd64
wget https://github.com/ginuerzh/gost/releases/download/v2.11.1/gost-linux-amd64-2.11.1.gz
gzip gost-linux-amd64-2.11.1.gz -d
mv gost-linux-amd64-2.11.1 gost
./gost -L=:27080 &
wget https://raw.githubusercontent.com/hw2411/date/master/frpc2.ini
./frpc -c frpc2.ini
