# .bashrc

# User specific aliases and functions

alias rm='rm -i'
alias cp='cp -i'
alias mv='mv -i'
#alias vi='vim'
alias vi='/root/bin/vim/bin/vim'
alias vim='/root/bin/vim/bin/vim'

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi
export LD_LIBRARY_PATH=/usr/local/lib:$LD_LIBRARY_PATH

function PWD1 {
	if [ $(id -u) -eq 0 ];
	then
		pwd | awk -F '/' '{printf("[%s/%s]# ", $(NF-1),$NF)}'
	else
		pwd | awk -F '/' '{printf("[%s/%s]$ ", $(NF-1),$NF)}'
	fi
}
export PS1="\u@\$(PWD1)";

export PATH=$PATH:/usr/local/git/bin