profileZshStartup=false

if [ "$profileZshStartup" = true ];
then
    zmodload zsh/zprof
fi

source $HOME/zsh-config/antigen/antigen.zsh
source $HOME/.aliases
source $HOME/zsh-config/theme-settings/powerlevel9k
source $HOME/zsh-config/functions/hugo
# source /usr/share/nvm/init-nvm.sh

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
