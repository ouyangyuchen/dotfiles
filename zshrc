export ZSH=$HOME/.oh-my-zsh

export ZSH_THEME="eastwood"
plugins=(git zsh-autosuggestions zsh-syntax-highlighting)

source $ZSH/oh-my-zsh.sh

# User configuration

export LANG=en_US.UTF-8

export EDITOR=vim

if [ -f ~/.zsh_aliases ]; then
    source ~/.zsh_aliases
fi

