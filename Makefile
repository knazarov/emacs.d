all: init.elc third-party/third-party-autoloads.el

init.elc: init.el
	emacs -batch -L third-party -f batch-byte-compile ~/.emacs.d/init.el

third-party/third-party-autoloads.el: init.el
	emacs -batch -L third-party --eval='(progn (package-initialize) (package-generate-autoloads "third-party" "~/.emacs.d/third-party"))'
	touch third-party/third-party-autoloads.el

clean:
	rm -f init.elc
	rm -f third-party/third-party-autoloads.el
