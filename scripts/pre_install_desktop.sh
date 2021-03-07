#/bin/bash
sudo apt update && sudo apt upgrade
sudo apt install mc git zsh htop tmux
sh -c "$(wget https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh -O -)"
echo "export ZSH=/home/$(whoami)/.oh-my-zsh
ZSH_THEME="bira"
plugins=(git rails bundle docker gitignore)
source $ZSH/oh-my-zsh.sh" > ~/.zshrc
chsh -s /bin/zsh
