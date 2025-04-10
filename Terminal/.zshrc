#====================#
# ⚡ Powerlevel10k
#====================#
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi
typeset -g POWERLEVEL9K_INSTANT_PROMPT=quiet

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
zinit self-update &> /dev/null

#====================#
# 🔌 プラグイン導入
#====================#
zinit light zsh-users/zsh-autosuggestions
zinit light zsh-users/zsh-syntax-highlighting
zinit light zsh-users/zsh-completions
zinit light romkatv/powerlevel10k

#====================#
# 🔍 補完設定
#====================#
autoload -Uz compinit && compinit -u
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Z}'
zstyle ':completion:*:sudo:*' command-path /usr/local/sbin /usr/local/bin /usr/sbin /usr/bin /sbin /bin

#====================#
# 🎨 プロンプト設定
#====================#
if [[ -f ~/.p10k.zsh ]]; then
  source ~/.p10k.zsh
fi

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
# 📦 エイリアス
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
