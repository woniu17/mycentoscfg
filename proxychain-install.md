# install proxychain

```shell
git clone https://github.com/haad/proxychains.git
cd proxychains
./configure
make && make install
cp src/proxychains.conf /etc/
```

# configure proxychian
```shell
#/etc/proxychains.conf
socks5  127.0.0.1 1080
#end of file
```

# proxy through shadowsock

```
proxychains4 curl https://www.google.com
```
