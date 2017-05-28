# install git

```
yum install curl-devel expat-devel gettext-devel openssl-devel zlib-devel
wget https://www.kernel.org/pub/software/scm/git/git-2.12.3.tar.gz
tar zxvf git-2.12.3.tar.gz
cd git-2.12.3
make prefix=/usr/local all
make prefix=/usr/local install
```

https://git-scm.com/book/zh/v1/%E8%B5%B7%E6%AD%A5-%E5%AE%89%E8%A3%85-Git
