#~/.bashrc
#
#
# Prompt básico
export PS1='\u@\h:\w\$ '

# Prompt com cores
export PS1='\[\e[0;32m\]\u@\h\[\e[m\]:\[\e[0;34m\]\w\[\e[m\]\$ '

# Tamanho do histórico
export HISTSIZE=1000
export HISTFILESIZE=2000

# Ignorar comandos duplicados e espaços iniciais no histórico
export HISTCONTROL=ignoreboth

# Formato da entrada do histórico
export HISTTIMEFORMAT='%F %T '

# Ativar complementação automática
if [ -f /etc/bash_completion ]; then
  . /etc/bash_completion
fi

# Carregar o script de complementação Git
if [ -f /usr/share/bash-completion/completions/git ]; then
  . /usr/share/bash-completion/completions/git
fi

## Variáveis
SERVER="acodex-server"
PHP="/sdcard/Paschoal/Programacao/php"

## aliases list
alias pdir="cd /sdcard/Paschoal/"
alias server="$SERVER"
alias php_dir="cd $PHP"
alias la="ls -a --color=auto"
alias vim="nvim"
alias h="history | less"
alias up="pkg update && pkg upgrade -y"
