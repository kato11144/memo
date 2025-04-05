#====================#
# 🛠️ 基本設定
#====================#
export LANG=ja_JP.UTF-8
autoload -Uz colors && colors
bindkey -e

#====================#
# ⚙️ オプション設定
#====================#
setopt print_eight_bit
setopt no_beep
setopt interactive_comments
setopt auto_pushd
setopt pushd_ignore_dups
setopt extended_glob

#====================#
# 📜 履歴管理
#====================#
HISTFILE=~/.zsh_history
HISTSIZE=1000000
SAVEHIST=1000000

setopt extended_history
setopt share_history
setopt hist_ignore_all_dups
setopt hist_ignore_space
setopt hist_reduce_blanks

alias history='history -t "%F %T"'

#====================#
# 💡 プラグイン管理
#====================#
if [[ ! -f "${ZDOTDIR:-$HOME}/.zinit/bin/zinit.zsh" ]]; then
  mkdir -p "${ZDOTDIR:-$HOME}/.zinit"
  git clone https://github.com/zdharma-continuum/zinit "${ZDOTDIR:-$HOME}/.zinit/bin"
fi
source "${ZDOTDIR:-$HOME}/.zinit/bin/zinit.zsh"
zinit self-update

#====================#
# 🔌 プラグイン導入
#====================#
zinit light zsh-users/zsh-autosuggestions
zinit light zsh-users/zsh-syntax-highlighting
zinit light zsh-users/zsh-completions

#====================#
# 🔍 補完設定
#====================#
autoload -Uz compinit && compinit -u
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Z}'
zstyle ':completion:*:sudo:*' command-path /usr/local/sbin /usr/local/bin /usr/sbin /usr/bin /sbin /bin
zstyle ':completion::complete:*' use-cache on
zstyle ':completion::complete:*' cache-path ~/.zsh/cache

#====================#
# 🎨 プロンプト設定
#====================#
PROMPT="%{${fg[blue]}%}%n:%{${reset_color}%} %c/ %# "

function add_line {
  [[ -z "${PS1_NEWLINE_LOGIN}" ]] && PS1_NEWLINE_LOGIN=true || printf '\n'
}
add-zsh-hook precmd add_line

#====================#
# 🔧 vcs_info
#====================#
autoload -Uz vcs_info
zstyle ':vcs_info:*' formats '%F{green}(%s)-[%b]%f'
zstyle ':vcs_info:*' actionformats '%F{red}(%s)-[%b|%a]%f'

function _update_vcs_info_msg() {
  LANG=en_US.UTF-8 vcs_info
  RPROMPT="${vcs_info_msg_0_}"
}
add-zsh-hook precmd _update_vcs_info_msg

#====================#
# ⚡ エイリアス
#====================#
alias la='ls -a'
alias ll='ls -l'
alias rm='rm -i'
alias cp='cp -i'
alias mv='mv -i'
alias mkdir='mkdir -p'
alias sudo='sudo '
alias -g L='| less'
alias -g G='| grep'

#====================#
# 💻 OSごとの設定
#====================#
case ${OSTYPE} in
  darwin*)
    export CLICOLOR=1
    alias ls='ls -G -F'
    ;;
  linux*)
    alias ls='ls -F --color=auto'
    ;;
esac
