profileZshStartup=false

if [ "$profileZshStartup" = true ];
then
    zmodload zsh/zprof
fi

source ~/zsh/antigen/antigen.zsh
source $HOME/.aliases
source /usr/share/nvm/init-nvm.sh

POWERLEVEL9K_INSTALLATION_PATH=$ANTIGEN_BUNDLES/bhilburn/powerlevel9k
POWERLEVEL9K_MODE='awesome-patched'

POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(os_icon dir vcs)
POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(status virtualenv node_version)

POWERLEVEL9K_SHORTEN_DIR_LENGTH=2

POWERLEVEL9K_PROMPT_ON_NEWLINE=true

# Load the oh-my-zsh's library.
antigen use oh-my-zsh

# Bundles from the default repo (robbyrussell's oh-my-zsh).
#antigen bundle git
antigen bundle gitfast

# Syntax highlighting bundle.
antigen bundle zsh-users/zsh-syntax-highlighting

# Load the theme.
antigen theme bhilburn/powerlevel9k powerlevel9k

# Tell antigen that you're done.
antigen apply

[[ -f /etc/profile.d/vte.sh ]] && . /etc/profile.d/vte.sh

if [ "$profileZshStartup" = true ];
then
    zprof
fi
