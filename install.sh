# Install Vundle
echo "Cloning Vundle ..."
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

echo "Cloning molokai color ..."
wget https://raw.githubusercontent.com/tomasr/molokai/master/colors/molokai.vim -O ~/.vim/colors/molokai.vim

echo "Cloning scala vim ..."
mkdir -p ~/.vim/ftdetect ~/.vim/indent ~/.vim/syntax
for d in ftdetect indent syntax ; do wget -O ~/.vim/$d/scala.vim https://raw.githubusercontent.com/derekwyatt/vim-scala/master/$d/scala.vim; done

echo "Updating vimrc ..."
cp .vimrc ~/.vimrc

echo "Installing vim plugins ..."
vim +BundleInstall +qall
