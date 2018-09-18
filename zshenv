load () {
  [ -f $1 ] && source $1 || echo "$1 not found"
}
load $HOME/repo/github.com/aki017/zshrc/go
load $HOME/repo/github.com/aki017/zshrc/python
load $HOME/repo/github.com/aki017/zshrc/fzf
load $HOME/repo/github.com/aki017/zshrc/rbenv

export PATH=/usr/local/bin:/usr/local/sbin:/usr/bin:/usr/sbin:/bin:/sbin:$PATH
export PATH=$HOME/local/bin:$PATH
export PATH=$HOME/repo/github.com/aki017/dotfiles/bin:$PATH
export PATH=$HOME/.nodebrew/current/bin:$PATH
export MANPATH=$HOME/local/share/man:/usr/local/share/man:$MANPATH
export DOCKER_HOST=localhost:2375
