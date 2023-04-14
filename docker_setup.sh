apt-get update
apt-get upgrade

apt-get install -y tmux wget curl lsb-release git tmux python3 python3-pip cmake build-essential apt-transport-https software-properties-common
apt-get install -y libgl1-mesa-glx libegl1-mesa libxrandr2 libxrandr2 libxss1 libxcursor1 libxcomposite1 libasound2 libxi6 libxtst6
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
sudo add-apt-repository ppa:jonathonf/vim
apt-get install -y vim

git config --global user.name "TaeWoon-Kang"

git config --global user.email "taewoon1374@gmail.com"

cp .vimrc ~/.vim/
vim +PluginInstall +qall

