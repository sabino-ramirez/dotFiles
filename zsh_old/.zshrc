# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.config/zsh/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.config/zsh/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.

#!/bin/sh
export ZDOTDIR=$HOME/.config/zsh
HISTFILE=~/.zsh_history
setopt appendhistory

# stop auto activation of conda base environment
export CONDA_AUTO_ACTIVATE_BASE=false

export PATH=$PATH:/usr/local/go/bin

# auto-inserted by @update.afni.binaries :
# export PATH=$PATH:/home/sabino/abin
# export R_LIBS=/home/sabino/R

# some useful options (man zshoptions)
setopt autocd extendedglob nomatch menucomplete
setopt interactive_comments
# stty stop undef		# Disable ctrl-s to freeze terminal.
zle_highlight=('paste:none')

# beeping is annoying
unsetopt BEEP
unsetopt nomatch


# completions
autoload -Uz compinit
zstyle ':completion:*' menu select
# zstyle ':completion::complete:lsof:*' menu yes select
zmodload zsh/complist
# compinit
_comp_options+=(globdots)		# Include hidden files.

autoload -U up-line-or-beginning-search
autoload -U down-line-or-beginning-search
zle -N up-line-or-beginning-search
zle -N down-line-or-beginning-search

# Colors
autoload -Uz colors && colors

# Useful Functions
source "$ZDOTDIR/zsh-functions"

# Normal files to source
zsh_add_file "zsh-exports"
zsh_add_file "zsh-vim-mode"
zsh_add_file "zsh-aliases"
# zsh_add_file "zsh-prompt"

# Plugins
zsh_add_plugin "zsh-users/zsh-autosuggestions"
zsh_add_plugin "zsh-users/zsh-syntax-highlighting"
# zsh_add_plugin "hlissner/zsh-autopair"
zsh_add_completion "esc/conda-zsh-completion" false
# For more plugins: https://github.com/unixorn/awesome-zsh-plugins
# More completions https://github.com/zsh-users/zsh-completions

# Key-bindings
bindkey -s '^o' 'ranger^M'
bindkey -s '^f' 'zi^M'
bindkey -s '^s' 'ncdu^M'
# bindkey -s '^n' 'nvim $(fzf)^M'
# bindkey -s '^v' 'nvim\n'
bindkey -s '^z' 'zi^M'
bindkey '^[[P' delete-char
bindkey "^p" up-line-or-beginning-search # Up
bindkey "^n" down-line-or-beginning-search # Down
bindkey "^k" up-line-or-beginning-search # Up
bindkey "^j" down-line-or-beginning-search # Down
bindkey -r "^u"
bindkey -r "^d"

# FZF 
# TODO update for mac
# [ -f /usr/share/fzf/completion.zsh ] && source /usr/share/fzf/completion.zsh
# [ -f /usr/share/fzf/key-bindings.zsh ] && source /usr/share/fzf/key-bindings.zsh
# [ -f /usr/share/doc/fzf/examples/completion.zsh ] && source /usr/share/doc/fzf/examples/completion.zsh
# [ -f /usr/share/doc/fzf/examples/key-bindings.zsh ] && source /usr/share/doc/fzf/examples/key-bindings.zsh
# [ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
# [ -f $ZDOTDIR/completion/_fnm ] && fpath+="$ZDOTDIR/completion/"
# export FZF_DEFAULT_COMMAND='rg --hidden -l ""'
compinit

# Edit line in vim with ctrl-e:
autoload edit-command-line; zle -N edit-command-line
# bindkey '^e' edit-command-line

# TODO Remove these
# setxkbmap -option caps:escape
# xset r rate 210 40

# Speedy keys
# xset r rate 210 40

# Environment variables set everywhere
export EDITOR="nvim"
export TERMINAL="alacritty"
export BROWSER="brave"

# For QT Themes
# export QT_QPA_PLATFORMTHEME=qt5ct

# remap caps to escape
# setxkbmap -option caps:escape
# swap escape and caps
# setxkbmap -option caps:swapescape
source ~/.config/zsh/plugins/powerlevel10k/powerlevel10k.zsh-theme

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
. "$HOME/.cargo/env"

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/home/sabino/miniconda3/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/home/sabino/miniconda3/etc/profile.d/conda.sh" ]; then
        . "/home/sabino/miniconda3/etc/profile.d/conda.sh"
    else
        export PATH="/home/sabino/miniconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<

# To customize prompt, run `p10k configure` or edit ~/.config/zsh/.p10k.zsh.
[[ ! -f ~/.config/zsh/.p10k.zsh ]] || source ~/.config/zsh/.p10k.zsh
