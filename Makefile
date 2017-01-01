.DEFAULT_GOAL:=install

.PHONY: install
install:
	stow -t ~ .
	stow -t ~/.oh-my-zsh/themes zsh-themes

.PHONY: uninstall
uninstall:
	stow -Dt ~ .

.PHONY: update
update: pull install

.PHONY: pull
pull:
	git pull
