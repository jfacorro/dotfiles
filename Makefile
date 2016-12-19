all:
	@echo "Copying dotfiles to ${USER}'s home..."
	@find . -name ".*" -type f | xargs -Ix ln x ~/x 2> /dev/null || true
