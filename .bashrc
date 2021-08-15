#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

#alias
alias \
	yt="ytfzf -t"\
	pm="pulsemixer"\
	ac="xdotool click --repeat"\
	fagman="doas pacman -Syu"\
	musb="udisksctl mount -b"\
	unusb="udisksctl unmount -b"\
	tor="cd repos/tor/;./s*"\
	dmci="doas make clean install"\
	ls='ls --color=auto'
	PS1='/g/\W '
pfetch
