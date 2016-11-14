export LANG=ja_JP.UTF-8
export LESSCHARSET=utf-8

setopt prompt_subst
REPORTTIME=3

autoload colors
colors
export DLH=""
export DLS=""
export DRH=""
export DRS=""

# Color
RESET="%{${reset_color}%}"

# Prompt
PROMPT='%{$fg[white]$bg[blue]%} %m %{$fg[blue]$bg[white]%}$DLH ${USER} ${RESET}${WHITE}$DLH${RESET} '

# VCS config

ZSH_VCS_PROMPT_GIT_FORMATS=""
ZSH_VCS_PROMPT_ACTION_GIT_FORMATS=""
# VCS name
ZSH_VCS_PROMPT_GIT_FORMATS+="%{$fg[blue]%}$DRH%{$bg[blue]$fg[white]%} #s "
ZSH_VCS_PROMPT_GIT_ACTION_FORMATS+="%{$fg[blue]%}$DRH%{$bg[blue]$fg[white]%} #s "
ZSH_VCS_PROMPT_VCS_FORMATS="%{$fg[blue]%}$DRH%{$bg[blue]$fg[white]%} #s "
ZSH_VCS_PROMPT_VCS_ACTION_FORMATS="%{$fg[blue]%}$DRH%{$bg[blue]$fg[white]%} #s "
# Branch name
ZSH_VCS_PROMPT_GIT_FORMATS+="%{$fg[cyan]%}$DRH%{$bg[cyan]$fg[black]%}  #b"
ZSH_VCS_PROMPT_GIT_ACTION_FORMATS+="%{$fg[cyan]%}$DRH%{$bg[cyan]$fg[black]%}  #b"
ZSH_VCS_PROMPT_VCS_FORMATS+="%{$fg[cyan]%}$DRH%{$bg[cyan]$fg[black]%}  #b"
ZSH_VCS_PROMPT_VCS_ACTION_FORMATS+="%{$fg[cyan]%}$DRH%{$bg[cyan]$fg[black]%}  #b"
# Action
ZSH_VCS_PROMPT_GIT_ACTION_FORMATS+=':%{%B%F{red}%}#a%{%f%b%}'
ZSH_VCS_PROMPT_VCS_ACTION_FORMATS+=':%{%B%F{red}%}#a%{%f%b%}'
# Ahead and Behind
ZSH_VCS_PROMPT_GIT_FORMATS+='#c#d'
ZSH_VCS_PROMPT_GIT_ACTION_FORMATS+='#c#d'
# Staged
ZSH_VCS_PROMPT_GIT_FORMATS+='#e'
ZSH_VCS_PROMPT_GIT_ACTION_FORMATS+='#e'
# Conflicts
ZSH_VCS_PROMPT_GIT_FORMATS+='#f'
ZSH_VCS_PROMPT_GIT_ACTION_FORMATS+='#f'
# Unstaged
ZSH_VCS_PROMPT_GIT_FORMATS+='#g'
ZSH_VCS_PROMPT_GIT_ACTION_FORMATS+='#g'
# Untracked
ZSH_VCS_PROMPT_GIT_FORMATS+='#h'
ZSH_VCS_PROMPT_GIT_ACTION_FORMATS+='#h'
# Stashed
ZSH_VCS_PROMPT_GIT_FORMATS+='#i'
ZSH_VCS_PROMPT_GIT_ACTION_FORMATS+='#i'
# Clean
ZSH_VCS_PROMPT_GIT_FORMATS+='#j'
ZSH_VCS_PROMPT_GIT_ACTION_FORMATS+='#j'

## The symbols.
ZSH_VCS_PROMPT_AHEAD_SIGIL=" %{$fg[white]%}$DRH%{$bg[white]$fg[black]%}↑ "
ZSH_VCS_PROMPT_BEHIND_SIGIL=" %{$fg[white]%}$DRH%{$bg[white]$fg[black]%}↓ "
ZSH_VCS_PROMPT_STAGED_SIGIL=" %{$fg[blue]%}$DRH%{$bg[blue]$fg[white]%}● "
ZSH_VCS_PROMPT_CONFLICTS_SIGIL=" %{$fg[red]%}$DRH%{$bg[red]$fg[white]%}✖ "
ZSH_VCS_PROMPT_UNSTAGED_SIGIL=" %{$fg[red]%}$DRH%{$bg[red]$fg[white]%}✚ "
ZSH_VCS_PROMPT_UNTRACKED_SIGIL=" %{$fg[magenta]%}$DRH%{$bg[magenta]$fg[white]%}… "
ZSH_VCS_PROMPT_STASHED_SIGIL=" %{$fg[blue]%}$DRH%{$bg[blue]$fg[white]%}⚑ "
ZSH_VCS_PROMPT_CLEAN_SIGIL=" %{$fg[green]%}$DRH%{$bg[green]$fg[white]%}✔ "
ZSH_VCS_PROMPT_ENABLE_CACHING='true'
[ -f $HOME/repo/github.com/yonchu/zsh-vcs-prompt/zshrc.sh ] && source $HOME/repo/github.com/yonchu/zsh-vcs-prompt/zshrc.sh
RPROMPT='$(vcs_super_info) %{$fg[white]%}$DRH%{$bg[white]$fg[blue]%} %(5~,%-2~/.../%2~,%~)%{$fg[white]%}$RESET'


# 指定したコマンド名がなく、ディレクトリ名と一致した場合 cd する
setopt auto_cd

# cd でTabを押すとdir list を表示
setopt auto_pushd

# ディレクトリスタックに同じディレクトリを追加しないようになる
setopt pushd_ignore_dups

# コマンドのスペルチェックをする
# setopt correct

# コマンドライン全てのスペルチェックをする
# setopt correct_all

# 上書きリダイレクトの禁止
setopt no_clobber

# 補完候補リストを詰めて表示
setopt list_packed

# auto_list の補完候補一覧で、ls -F のようにファイルの種別をマーク表示
setopt list_types

# 補完候補が複数ある時に、一覧表示する
setopt auto_list

# コマンドラインの引数で --prefix=/usr などの = 以降でも補完できる
setopt magic_equal_subst

# カッコの対応などを自動的に補完する
setopt auto_param_keys

# ディレクトリ名の補完で末尾の / を自動的に付加し、次の補完に備える
setopt auto_param_slash

# {a-c} を a b c に展開する機能を使えるようにする
# setopt brace_ccl

# シンボリックリンクは実体を追うようになる
#setopt chase_links

# 補完キー（Tab,  Ctrl+I) を連打するだけで順に補完候補を自動で補完する
setopt auto_menu

#濁点とか対策
setopt COMBINING_CHARS
# sudoも補完の対象
zstyle ':completion:*:sudo:*' command-path /usr/local/sbin /usr/local/bin /usr/sbin /usr/bin /sbin /bin

# 色付きで補完する
# zstyle ':completion:*' list-colors di=34 fi=0
zstyle ':completion:*' list-colors ${(s.:.)LS_COLORS}

# 複数のリダイレクトやパイプなど、必要に応じて tee や cat の機能が使われる
setopt multios

# 最後がディレクトリ名で終わっている場合末尾の / を自動的に取り除かない
setopt noautoremoveslash

# beepを鳴らさないようにする
setopt nolistbeep

# Match without pattern
# ex. > rm *~398
# remove * without a file "398". For test, use "echo *~398"
# setopt extended_glob

## Keybind configuration
#
# emacs like keybind (e.x. Ctrl-a goes to head of a line and Ctrl-e goes
#   to end of it)
bindkey -e

# historical backward/forward search with linehead string binded to ^P/^N
#
autoload history-search-end
zle -N history-beginning-search-backward-end history-search-end
zle -N history-beginning-search-forward-end history-search-end
bindkey "^p" history-beginning-search-backward-end
bindkey "^n" history-beginning-search-forward-end
bindkey "\\ep" history-beginning-search-backward-end
bindkey "\\en" history-beginning-search-forward-end

# glob(*)によるインクリメンタルサーチ
bindkey '^R' history-incremental-pattern-search-backward
bindkey '^S' history-incremental-pattern-search-forward

## Command history configuration
HISTFILE=~/.zsh_history
HISTSIZE=1000000
SAVEHIST=1000000

# 登録済コマンド行は古い方を削除
setopt hist_ignore_all_dups

# historyの共有
setopt share_history

# 余分な空白は詰める
setopt hist_reduce_blanks

# add history when command executed.
setopt inc_append_history

# history (fc -l) コマンドをヒストリリストから取り除く。
setopt hist_no_store
# サスペンド中のプロセスと同じコマンド名を実行した場合はリジュームする
# setopt auto_resume

# =command を command のパス名に展開する
# setopt equals

# ファイル名で #, ~, ^ の 3 文字を正規表現として扱う
# setopt extended_glob

# zsh の開始・終了時刻をヒストリファイルに書き込む
# setopt extended_history

# Ctrl+S/Ctrl+Q によるフロー制御を使わないようにする
setopt NO_flow_control

# 各コマンドが実行されるときにパスをハッシュに入れる
# setopt hash_cmds

# コマンドラインの先頭がスペースで始まる場合ヒストリに追加しない
# setopt hist_ignore_space

# ヒストリを呼び出してから実行する間に一旦編集できる状態になる
# setopt hist_verify

# シェルが終了しても裏ジョブに HUP シグナルを送らないようにする
# setopt NO_hup

# Ctrl+D では終了しないようになる（exit, logout などを使う）
# setopt ignore_eof

# コマンドラインでも # 以降をコメントと見なす
# setopt interactive_comments

# メールスプール $MAIL が読まれていたらワーニングを表示する
# setopt mail_warning

# ファイル名の展開でディレクトリにマッチした場合末尾に / を付加する
# setopt mark_dirs

# ファイル名の展開で、辞書順ではなく数値的にソートされるようになる
# setopt numeric_glob_sort

# コマンド名に / が含まれているとき PATH 中のサブディレクトリを探す
setopt path_dirs

# 戻り値が 0 以外の場合終了コードを表示する
# setopt print_exit_value

# pushd を引数なしで実行した場合 pushd $HOME と見なされる
# setopt pushd_to_home

# rm * などの際、本当に全てのファイルを消して良いかの確認しないようになる
# setopt rm_star_silent

# rm_star_silent の逆で、10 秒間反応しなくなり、頭を冷ます時間が与えられる
# setopt rm_star_wait

# for, repeat, select, if, function などで簡略文法が使えるようになる
# setopt short_loops

# デフォルトの複数行コマンドライン編集ではなく、１行編集モードになる
# setopt single_line_zle

# コマンドラインがどのように展開され実行されたかを表示するようになる
# setopt xtrace

# ctrl-w, ctrl-bキーで単語移動
bindkey "^W" forward-word
bindkey "^B" backward-word

# back-wordでの単語境界の設定
autoload -Uz select-word-style
select-word-style default
zstyle ':zle:*' word-chars " _-./;@"
zstyle ':zle:*' word-style unspecified

# URLをコピペしたときに自動でエスケープ
autoload -Uz url-quote-magic
zle -N self-insert url-quote-magic

# 勝手にpushd
setopt autopushd

# エラーメッセージ本文出力に色付け
e_NORMAL=`echo -e "\033[0;37m"`
e_RED=`echo -e "\033[1;31m"`
e_BLUE=`echo -e "\033[1;36m"`

function make() {
LANG=C command make -j4 "$@" 2>&1 | sed -e "s@[Ee]rror:.*@$e_RED&$e_NORMAL@g" -e "s@cannot¥sfind.*@$e_RED&$e_NORMAL@g" -e "s@[Ww]arning:.*@$e_BLUE&$e_NORMAL@g"
}

## Completion configuration
#
fpath=(~/dotfiles/zsh/functions/Completion ${fpath})
autoload -U compinit
compinit -u

## Prediction configuration
#
autoload predict-on
#predict-off

## Command Line Stack [Esc]-[q]
bindkey -a 'q' push-line


bindkey "^?"    backward-delete-char
bindkey "^H"    backward-delete-char
bindkey "^[[3~" delete-char
bindkey "^[[1~" beginning-of-line
bindkey "^[[4~" end-of-line

## Alias configuration
#
# expand aliases before completing
#
setopt complete_aliases     # aliased ls needs if file/dir completions work

alias where="command -v"

case "${OSTYPE}" in
    freebsd*|darwin*)
        alias ls="ls -alG"
        ;;
    linux*)
        alias la="ls -al"
        ;;
esac

zstyle ':completion:*' list-colors 'di=36' 'ln=35' 'so=32' 'ex=31' 'bd=46;34' 'cd=43;34'

alias grep="grep --color=auto"
export EDITOR=vim

# zsh の exntended_glob と HEAD^^^ を共存させる。
# typeset -A abbreviations
# abbreviations=(
# "HEAD^"     "HEAD\\^"
# "HEAD^^"    "HEAD\\^\\^"
# "HEAD^^^"   "HEAD\\^\\^\\^"
# "HEAD^^^^"  "HEAD\\^\\^\\^\\^\\^"
# "HEAD^^^^^" "HEAD\\^\\^\\^\\^\\^"
# )
# 
# magic-abbrev-expand () {
#     local MATCH
#     LBUFFER=${LBUFFER%%(#m)[-_a-zA-Z0-9^]#}
#     LBUFFER+=${abbreviations[$MATCH]:-$MATCH}
# }
# 
# magic-abbrev-expand-and-insert () {
#     magic-abbrev-expand
#     zle self-insert
# }
# 
# magic-abbrev-expand-and-accept () {
#     magic-abbrev-expand
#     zle accept-line
# }
# 
# no-magic-abbrev-expand () {
#     LBUFFER+=' '
# }
# 
# zle -N magic-abbrev-expand
# zle -N magic-abbrev-expand-and-insert
# zle -N magic-abbrev-expand-and-accept
# zle -N no-magic-abbrev-expand
# bindkey "\r"  magic-abbrev-expand-and-accept # M-x RET はできなくなる
# bindkey "^J"  accept-line # no magic
# bindkey " "   magic-abbrev-expand-and-insert
# bindkey "."   magic-abbrev-expand-and-insert
# bindkey "^x " no-magic-abbrev-expand

autoload -Uz compinit
compinit

bindkey '^^' autosuggest-execute

load () {
  [ -f $1 ] && source $1 || echo "$1 not found"
}

load $HOME/repo/github.com/rupa/z/z.sh
load $HOME/repo/github.com/zsh-users/zsh-autosuggestions/zsh-autosuggestions.zsh
load $HOME/repo/github.com/aki017/zshrc/go
load $HOME/repo/github.com/aki017/zshrc/fzf
load $HOME/repo/github.com/aki017/zshrc/peco
load $HOME/repo/github.com/aki017/zshrc/alias
load $HOME/repo/github.com/aki017/zshrc/rbenv
load $HOME/repo/github.com/aki017/zshrc/nodebrew
load $HOME/repo/github.com/aki017/zshrc/direnv

case "${OSTYPE}" in
  darwin*)
    load $HOME/repo/github.com/aki017/zshrc/mac
  ;;
  linux*)
    load $HOME/repo/github.com/aki017/zshrc/linux
  ;;
esac

if grep -q Microsoft /proc/version 2>/dev/null; then
    load $HOME/repo/github.com/aki017/zshrc/wsl
fi

## local固有設定
[ -f ~/zshrc.local ] && source ~/zshrc.local

load $HOME/repo/github.com/zsh-users/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
