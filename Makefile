clone:
	git clone https://github.com/alacritty/alacritty workspace

apply-patch:
	cd workspace && git am ../patches/*.patch

init: clone apply-patch

extract-patch:
	cd workspace && git format-patch origin/master --binary -o ../patches/
