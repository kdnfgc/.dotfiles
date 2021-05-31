# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.  Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi


### Added by Zinit's installer
if [[ ! -f $HOME/.zinit/bin/zinit.zsh ]]; then
    print -P "%F{33}▓▒░ %F{220}Installing %F{33}DHARMA%F{220} Initiative Plugin Manager (%F{33}zdharma/zinit%F{220})…%f"
    command mkdir -p "$HOME/.zinit" && command chmod g-rwX "$HOME/.zinit"
    command git clone https://github.com/zdharma/zinit "$HOME/.zinit/bin" && \
        print -P "%F{33}▓▒░ %F{34}Installation successful.%f%b" || \
        print -P "%F{160}▓▒░ The clone has failed.%f%b"
fi

source "$HOME/.zinit/bin/zinit.zsh"
autoload -Uz _zinit
(( ${+_comps} )) && _comps[zinit]=_zinit
### End of Zinit's installer chunk


#Plugins
zinit light romkatv/powerlevel10k
zinit light zsh-users/zsh-syntax-highlighting
zinit light zsh-users/zsh-autosuggestions

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

#History
HISTFILE=~/.zsh_history
SAVEHIST=1000

#VI Mode
#bindkey -v
#export KEYTIMEOUT=1

# Use vim keys in tab complete menu:
#bindkey -v 'p' vi-backward-char
#bindkey -v 'x' vi-down-line-or-history
#bindkey -v 'k' vi-up-line-or-history
#bindkey -v 'y' vi-forward-char

#Navigate terminal with vim keys
bindkey '^P' backward-char
bindkey '^X' down-line-or-history
bindkey '^K' up-line-or-history
bindkey '^Y' forward-char
bindkey '^H' backward-delete-char


#Fixes backspace bug
#bindkey -v '^?' backward-delete-char
#bindkey -v menuselect 

#Kitty Completion
autoload -Uz compinit
compinit
# Completion for kitty
kitty + complete setup zsh | source /dev/stdin

#Sources Cargo & .profile
#source ~/.profile
#source ~/.cargo/env

#Aliases
alias ls='ls --color'
alias init='git init'
alias push='git push'
alias commit='git commit'
alias add='git add'
alias clone='git clone'
alias pull='git pull'
alias status='git status'
alias spec='pfetch'
alias off='poweroff'
alias rb='sudo reboot'
alias new='cargo new'
alias build='cargo build'
alias run='cargo run'
alias check='cargo check'
alias carup='cargo update'
