apt-get update
apt-get upgrade
apt-get install -y vim tmux wget curl lsb-release git tmux python3 python3-pip cmake build-essential apt-transport-https software-properties-common

git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
cp .vimrc ~/.vim/
vim +PluginInstall +qall

