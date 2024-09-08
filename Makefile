clone:
	git clone https://github.com/alacritty/alacritty workspace

clone-vte:
	git clone https://github.com/alacritty/vte workspace-vte

apply-patch:
	cd workspace && git am ../patches/*.patch

apply-patch-vte:
	cd workspace && git am ../patches-vte/*.patch

init: clone apply-patch
init-vte: clone-vte apply-patch-vte

extract-patch:
	cd workspace && git format-patch origin/master --binary -o ../patches/

extract-patch-vte:
	cd workspace-vte && git format-patch origin/master --binary -o ../patches-vte/
