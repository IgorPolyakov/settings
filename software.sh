#/bin/bash
sudo apt-get update && sudo apt-get upgrade
sudo apt-get install mc git zsh htop cppcheck cmake 
sh -c "$(wget https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh -O -)"
