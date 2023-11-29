apt-get update
apt-get upgrade

apt install sudo
apt-get install -y tmux wget curl lsb-release git tmux python3 python3-pip cmake build-essential apt-transport-https software-properties-common
apt-get install -y libgl1-mesa-glx libegl1-mesa libxrandr2 libxrandr2 libxss1 libxcursor1 libxcomposite1 libasound2 libxi6 libxtst6
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
add-apt-repository ppa:jonathonf/vim
apt update && apt install vim -y
apt-get install -y llvm clang clangd yarn

echo 'export PATH="/usr/local/opt/llvm/bin:${PATH}"' >> ~/.bashrc
git config --global user.name "TaeWoon-Kang"

git config --global user.email "taewoon1374@gmail.com"
curl -sL install-node.now.sh/lts | sudo bash

cp .vimrc ~/.vim/

#sudo apt-get install -y language-pack-en fonts-powerline zsh​
#sudo update-locale
#sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
#chsh -s $(which zsh)
#git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
#git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions

#plugins=(git
#zsh-syntax-highlighting
#zsh-autosuggestions
#)​
