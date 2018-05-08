SPHINXOPTS    =
SPHINXBUILD   = env/bin/sphinx-build
SOURCEDIR     = vadovelis
BUILDDIR      = build


env/bin/sphinx-build: env/bin/pip
	env/bin/pip install Sphinx

env/bin/pip:
	python -m venv env


.PHONY: help
help:
	@echo html    - build html version


.PHONY: html
html:
	$(SPHINXBUILD) -b html $(SOURCEDIR) $(BUILDDIR) $(SPHINXOPTS)


.PHONY: show
show:
	xdg-open build/index.html
