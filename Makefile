all: copy-dotfiles fish-config

FISH_CONFIG=~/.config/fish/config.fish

copy-dotfiles:
	@echo "Copying dotfiles to ${USER}'s home..."
	@find . -name ".*" -type f | xargs -Ix ln x ~/x 2> /dev/null || true

fish-config:
	@ echo "Adding evalutation of config.fish to ${FISH_CONFIG}..."
	@ echo "\neval (cat ${PWD}/config.fish)" >> ${FISH_CONFIG}
