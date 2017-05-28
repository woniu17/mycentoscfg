# install shadowsocks

```shell
pip install shadowsocks
```

# start shadowsocks

```shell
sslocal -c /etc/ss.json
```

```
#/etc/ss.json
{
    "server":"my_server_ip",
    "server_port":443,
    "local_address": "127.0.0.1",
    "local_port":1080,
    "password":"mypassword",
    "timeout":300,
    "method":"aes-256-cfb",
    "fast_open": false
}
```
