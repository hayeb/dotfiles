install:
	sudo pacman -S --needed stow zsh curl
	curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh | zsh
	rm ${HOME}/.zshrc
	stow vim
	stow zsh
	stow git
	stow zsh
