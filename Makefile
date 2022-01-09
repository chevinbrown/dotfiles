BREW := $(shell command -v brew 2> /dev/null)

default:
	make stow

stow:
	stow git
	stow zsh

install:
	make stow
ifndef BREW
	@echo "[dotfiles] Installing homebrew..."
	/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
else
	@echo "[dotfiles] Homebrew already installed"
endif

	brew bundle
