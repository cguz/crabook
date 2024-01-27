
all: build serve

build:
	jupyter-book config sphinx crabook
	jupyter-book build crabook
	cp -a ./crabook/iframes/. crabook/_build/html/iframes/
serve:
	open crabook/_build/html/index.html
