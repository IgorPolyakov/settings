#/bin/bash
sudo apt-get update && sudo apt-get upgrade
sudo apt-get install mc git zsh htop
sh -c "$(wget https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh -O -)"
echo "export ZSH=/home/$(whoami)/.oh-my-zsh
ZSH_THEME="bira"
plugins=(git rails bundle docker gitignore)
source $ZSH/oh-my-zsh.sh" > ~/.zshrc
