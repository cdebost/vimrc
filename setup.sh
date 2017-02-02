rm -rf ~/.vim/bundle/Vundle.vim || true
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
cp -f ./.vimrc ~/.vimrc
vim +PluginInstall +qall
