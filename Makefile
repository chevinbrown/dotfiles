default:
	make stow

stow:
	stow git
	stow zsh

install:
	make stow
	if [ ! $(which brew)  ]; then
		echo "[dotfiles] Installing homebrew..."
		/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
	fi
	brew bundle
