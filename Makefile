SPHINXOPTS    =
SPHINXBUILD   = env/bin/sphinx-build
SOURCEDIR     = vadovelis
BUILDDIR      = build


env/bin/sphinx-build: env/bin/pip
	env/bin/pip install Sphinx

env/bin/pip:
	python -m venv env

env/bin/livereload: env/bin/pip
	env/bin/pip install livereload


.PHONY: help
help:
	@echo html    - build html version
	@echo run     - run livereload server on build directory


.PHONY: html
html:
	$(SPHINXBUILD) -b html $(SOURCEDIR) $(BUILDDIR) $(SPHINXOPTS)

.PHONY: run
run: env/bin/livereload
	env/bin/livereload build
