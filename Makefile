install:
	sudo pacman -S --needed stow zsh curl gvim python3
	curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh | zsh
	rm -rf ${HOME}/{.zshrc,.vimrc,.vim,.gitconfig,.config/i3/config}
	mkdir -p ~/.vim/autoload ~/.vim/bundle
	curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim
	(cd ~/.vim/bundle && git clone git@github.com:ctrlpvim/ctrlp.vim.git)
	(cd ~/.vim/bundle && git clone git@github.com:scrooloose/nerdtree.git)
	(cd ~/.vim/bundle && git clone git@gitlab.science.ru.nl:cstaps/vim-clean.git)
	(cd ~/.vim/bundle && git clone --recurse-submodules -j4 git@github.com:Valloric/YouCompleteMe.git && cd YouCompleteMe && python3 install.py)
	stow vim
	stow zsh
	stow git
	stow zsh
	stow i3
