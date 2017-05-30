# install python

```shell
# install sqlite-devel openssl-devel before build python
yum install openssl-devel sqlite-devel
wget https://www.python.org/ftp/python/2.7.13/Python-2.7.13.tgz
tar zxvf Python-2.7.13.tgz
cd Python-2.7.13
# do not specify prefix, may be a keng when make vim
/.configure
make && make install
```

# make yum work as well

in file `/bin/yum`

change
```
#!/bin/python
```
to
```
#!/bin/python2.7
```

# install pip
```
wget https://bootstrap.pypa.io/get-pip.py
python get-pip.py
```

# generaty python share library
```shell
# ./configure --enable-shared may not make right binary python
/.configure --enable-shared
```
