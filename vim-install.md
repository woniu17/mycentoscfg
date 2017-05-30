# install vim

```
yum install ncurses-devel

git clone https://github.com/vim/vim.git
cd vim
./configure --enable-multibyte --with-features=huge --enable-cscope --enable-pythoninterp=yes
make && make install
```

# install vundle plugin

```
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
```

# configure vim

```
mv vimrc ~/.vimrc
vim
:BundleInstall
```

# install YCM

```shell
yum install cmake
cd /root/.vim/bundle/YouCompleteMe
./install.py --clang-completer
```
