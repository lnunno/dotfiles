.DEFAULT_GOAL:=install

.PHONY: install
install:
	stow -t ~ .

.PHONY: uninstall
uninstall:
	stow -Dt ~ .

.PHONY: update
update: pull install

.PHONY: pull
pull:
	git pull
