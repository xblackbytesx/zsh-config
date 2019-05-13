profileZshStartup=false

if [ "$profileZshStartup" = true ];
then
    zmodload zsh/zprof
fi

source $HOME/zsh-config/antigen/antigen.zsh
source $HOME/.aliases
source $HOME/zsh-config/theme-settings/powerlevel9k

# Functions
source $HOME/zsh-config/functions/updatemirrors
source $HOME/zsh-config/functions/backupphone
source $HOME/zsh-config/functions/fetchffnightly
source $HOME/zsh-config/functions/sortbymonth
source $HOME/zsh-config/functions/sortvideos

# Device specific stuff
source $HOME/zsh-config/.device_specific

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"

# Load some antigen bundles
antigen use oh-my-zsh
antigen bundle git
antigen bundle zsh-users/zsh-syntax-highlighting
antigen theme bhilburn/powerlevel9k powerlevel9k

# Tell antigen that you're done.
antigen apply

[[ -f /etc/profile.d/vte.sh ]] && . /etc/profile.d/vte.sh

if [ "$profileZshStartup" = true ];
then
    zprof
fi
