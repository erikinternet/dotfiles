#
# ~/.bash_profile
#

[[ -f ~/.bashrc ]] && . ~/.bashrc

export EDITOR="vim"
export TERMINAL="st"
export BROWSER="librewolf"

if [[ "$(tty)" = "/dev/tty1" ]]; then
	 cmus
fi

if [[ "$(tty)" = "/dev/tty2" ]]; then
	startx
fi
