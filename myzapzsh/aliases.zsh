#!/bin/sh
# alias j='z'
# alias f='zi'
alias lg='lazygit'
alias zsh-update-plugins="find "$ZDOTDIR/plugins" -type d -exec test -e '{}/.git' ';' -print0 | xargs -I {} -0 git -C {} pull -q"
alias nvimrc='cd ~/.config/nvim/ && nvim .'
alias zconf='cd ~/.config/zsh && nvim .'
alias kitconf='cd ~/.config/kitty && nvim kitty.conf'
alias ex='source ~/.zshrc'
alias oh='cd ~/.config/zsh && nvim aliases.zsh'
alias t='tree -L 1'
alias tt='tree -L 2'
alias ..='cd ..'
alias v='nvim'
alias vo='nvim .'
alias zel='zellij -l compact'
alias zell='zellij'
alias zelist='zellij list-sessions'
alias zelconf='cd ~/.config/zellij && nvim config.kdl'
alias c='clear'
alias bat='batcat'
alias ght='batcat ~/.githubusertoken.txt'
alias prof='cd ~ && nvim .profile'
alias tmuxconf='cd ~/.config/tmux/ && nvim tmux.conf'
alias slicer='exec /home/sabino/Downloads/Slicer-5.2.1-linux-amd64/Slicer'


# alias lvim='nvim -u ~/.local/share/lunarvim/lvim/init.lua --cmd "set runtimepath+=~/.local/share/lunarvim/lvim"'

# get fastest mirrors
# alias mirror="sudo reflector -f 30 -l 30 --number 10 --verbose --save /etc/pacman.d/mirrorlist"
# alias mirrord="sudo reflector --latest 50 --number 20 --sort delay --save /etc/pacman.d/mirrorlist"
# alias mirrors="sudo reflector --latest 50 --number 20 --sort score --save /etc/pacman.d/mirrorlist"
# alias mirrora="sudo reflector --latest 50 --number 20 --sort age --save /etc/pacman.d/mirrorlist"

# Remarkable
# alias remarkable_ssh='ssh root@10.11.99.1'
# alias restream='restream -p'

# Colorize grep output (good for log files)
alias grep='grep --color=auto'
alias egrep='egrep --color=auto'
alias fgrep='fgrep --color=auto'

# confirm before overwriting something
alias cp="cp -i"
alias mv='mv -i'
alias rm='rm -i'

# easier to read disk
alias df='df -h'     # human-readable sizes
alias free='free -m' # show sizes in MB

# get top process eating memory
alias psmem='ps auxf | sort -nr -k 4 | head -5'

# get top process eating cpu ##
alias pscpu='ps auxf | sort -nr -k 3 | head -5'

# gpg encryption
# verify signature for isos
alias gpg-check="gpg2 --keyserver-options auto-key-retrieve --verify"
# receive the key of a developer
alias gpg-retrieve="gpg2 --keyserver-options auto-key-retrieve --receive-keys"

# systemd
alias mach_list_systemctl="systemctl list-unit-files --state=enabled"

alias m="git checkout master"
alias s="git checkout stable"

if [[ $TERM == "xterm-kitty" ]]; then
  alias ssh="kitty +kitten ssh"
fi

case "$(uname -s)" in

Darwin)
	# echo 'Mac OS X'
	alias ls='ls -G'
	;;

Linux)
	alias ls='ls --color=auto'
	;;

CYGWIN* | MINGW32* | MSYS* | MINGW*)
	# echo 'MS Windows'
	;;
*)
	# echo 'Other OS'
	;;
esac
