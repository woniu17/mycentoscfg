# install python

```shell
# install sqlite-devel openssl-devel before build python
yum install openssl-devel sqlite-devel
wget https://www.python.org/ftp/python/2.7.13/Python-2.7.13.tgz
tar zxvf Python-2.7.13.tgz
cd Python-2.7.13
/.configure --prefix=/usr/local/python27
make && make install

mv /bin/python /bin/python-bak
ln -s /usr/local/python27/bin/python /bin/python
```

# export python bin file into PATH

in file `~/.bashrc`
```
export PATH=$PATH:/usr/local/python27/bin/
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
/.configure --prefix=/usr/local/python27 --enable-shared
```
