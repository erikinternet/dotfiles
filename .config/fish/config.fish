#  _____ _____
# | ____|_   _|
# |  _|   | |	
# | |___  | |
# |_____| |_|
#
# Muh fish config file

### EXPORT ### 
set TERMINAL "xterm-256color"
set EDITOR "vim"

# Functions needed for !! and !$
function __history_previous_command
  switch (commandline -t)
  case "!"
    commandline -t $history[1]; commandline -f repaint
  case "*"
    commandline -i !
  end
end

function __history_previous_command_arguments
  switch (commandline -t)
  case "!"
    commandline -t ""
    commandline -f history-token-search-backward
  case "*"
    commandline -i '$'
  end
end
# The bindings for !! and !$
if [ $fish_key_bindings = "fish_vi_key_bindings" ];
  bind -Minsert ! __history_previous_command
  bind -Minsert '$' __history_previous_command_arguments
else
  bind ! __history_previous_command
  bind '$' __history_previous_command_arguments
end
#end

#alias 
alias pm="alsamixer"
alias fagman="doas emerge --sync && doas emerge --verbose --update --deep --newuse  @world"
alias d="doas"
alias de="doas emerge"
alias e="emerge"
alias dep="doas emerge --depclean"
alias lainfetch="neofetch --ascii ~/.config/neofetch/lain"
alias md="udisksctl mount -b"
alias um="udisksctl unmount -b"

pfetch
acpi
