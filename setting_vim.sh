git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
cp .vimrc ~/
vim +PluginInstall +qall
vim +PlugInstall +qall

#After install :CocInstall coc-python,coc-pyright,coc-clangd

