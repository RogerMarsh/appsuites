### Makefile to build source and wheel distributions on Windows or Unix platforms.

PATH_TO_PYTHON ?= C:/Users/$(USERNAME)/AppData/Local/Programs/Python
PYTHON_VERSION ?= 39-64
PYTHON_VERSION_UNIX ?= 3.9
SDIST_FORMATS ?= gztar
DIST_DIR ?= ../dist

### Collect settings for MakeSubdir

PYTHON_SETTINGS = PATH_TO_PYTHON=$(PATH_TO_PYTHON)
PYTHON_SETTINGS += PYTHON_VERSION=$(PYTHON_VERSION)
PYTHON_SETTINGS += PYTHON_VERSION_UNIX=$(PYTHON_VERSION_UNIX)
PYTHON_SETTINGS += SDIST_FORMATS=$(SDIST_FORMATS)
PYTHON_SETTINGS += DIST_DIR=$(DIST_DIR)

### Targets

.PHONY : all setup-windows setup-unix build-windows build-unix windows unix

all:
	@echo "Use target windows or unix depending on platform running make"

windows:	build-windows

unix:	build-unix

build-windows:
### Distributions built with 'python -m build ...' on Windows
	cd solentware_base; make -f ../MakeSubdir build-windows $(PYTHON_SETTINGS)
	cd chesscalc; make -f ../MakeSubdir build-windows $(PYTHON_SETTINGS)
	cd chesstab; make -f ../MakeSubdir build-windows $(PYTHON_SETTINGS)
	cd chessql; make -f ../MakeSubdir build-windows $(PYTHON_SETTINGS)
	cd emailstore; make -f ../MakeSubdir build-windows $(PYTHON_SETTINGS)
	cd emailextract; make -f ../MakeSubdir build-windows $(PYTHON_SETTINGS)
	cd pgn_read; make -f ../MakeSubdir build-windows $(PYTHON_SETTINGS)
	cd chessresults; make -f ../MakeSubdir build-windows $(PYTHON_SETTINGS)
	cd chesssubmit; make -f ../MakeSubdir build-windows $(PYTHON_SETTINGS)
	cd chesstabular; make -f ../MakeSubdir build-windows $(PYTHON_SETTINGS)
	cd chessvalidate; make -f ../MakeSubdir build-windows $(PYTHON_SETTINGS)
	cd ecfformat; make -f ../MakeSubdir build-windows $(PYTHON_SETTINGS)
	cd solentware_grid; make -f ../MakeSubdir build-windows $(PYTHON_SETTINGS)
	cd solentware_misc; make -f ../MakeSubdir build-windows $(PYTHON_SETTINGS)
	cd uci_net; make -f ../MakeSubdir build-windows $(PYTHON_SETTINGS)

build-unix:
### Distributions built with 'python -m build ...' on Unix
	cd solentware_base; make -f ../MakeSubdir build-unix $(PYTHON_SETTINGS)
	cd chesscalc; make -f ../MakeSubdir build-unix $(PYTHON_SETTINGS)
	cd chesstab; make -f ../MakeSubdir build-unix $(PYTHON_SETTINGS)
	cd chessql; make -f ../MakeSubdir build-unix $(PYTHON_SETTINGS)
	cd emailstore; make -f ../MakeSubdir build-unix $(PYTHON_SETTINGS)
	cd emailextract; make -f ../MakeSubdir build-unix $(PYTHON_SETTINGS)
	cd pgn_read; make -f ../MakeSubdir build-unix $(PYTHON_SETTINGS)
	cd chessresults; make -f ../MakeSubdir build-unix $(PYTHON_SETTINGS)
	cd chesssubmit; make -f ../MakeSubdir build-unix $(PYTHON_SETTINGS)
	cd chesstabular; make -f ../MakeSubdir build-unix $(PYTHON_SETTINGS)
	cd chessvalidate; make -f ../MakeSubdir build-unix $(PYTHON_SETTINGS)
	cd ecfformat; make -f ../MakeSubdir build-unix $(PYTHON_SETTINGS)
	cd solentware_grid; make -f ../MakeSubdir build-unix $(PYTHON_SETTINGS)
	cd solentware_misc; make -f ../MakeSubdir build-unix $(PYTHON_SETTINGS)
	cd uci_net; make -f ../MakeSubdir build-unix $(PYTHON_SETTINGS)

setup-windows:
### Source distributions built with 'python setup.py ...' on Unix
	cd solentware_base; make -f ../MakeSubdir setup-windows $(PYTHON_SETTINGS)
	cd chesscalc; make -f ../MakeSubdir setup-windows $(PYTHON_SETTINGS)
	cd chesstab; make -f ../MakeSubdir setup-windows $(PYTHON_SETTINGS)
	cd chessql; make -f ../MakeSubdir setup-windows $(PYTHON_SETTINGS)
	cd emailstore; make -f ../MakeSubdir setup-windows $(PYTHON_SETTINGS)
	cd emailextract; make -f ../MakeSubdir setup-windows $(PYTHON_SETTINGS)
	cd pgn_read; make -f ../MakeSubdir setup-windows $(PYTHON_SETTINGS)
	cd chessresults; make -f ../MakeSubdir setup-windows $(PYTHON_SETTINGS)
	cd chesssubmit; make -f ../MakeSubdir setup-windows $(PYTHON_SETTINGS)
	cd chesstabular; make -f ../MakeSubdir setup-windows $(PYTHON_SETTINGS)
	cd chessvalidate; make -f ../MakeSubdir setup-windows $(PYTHON_SETTINGS)
	cd ecfformat; make -f ../MakeSubdir setup-windows $(PYTHON_SETTINGS)
	cd solentware_grid; make -f ../MakeSubdir setup-windows $(PYTHON_SETTINGS)
	cd solentware_misc; make -f ../MakeSubdir setup-windows $(PYTHON_SETTINGS)
	cd uci_net; make -f ../MakeSubdir setup-windows $(PYTHON_SETTINGS)

setup-unix:
### Source distributions built with 'python setup.py ...' on Unix
	cd solentware_base; make -f ../MakeSubdir setup-unix $(PYTHON_SETTINGS)
	cd chesscalc; make -f ../MakeSubdir setup-unix $(PYTHON_SETTINGS)
	cd chesstab; make -f ../MakeSubdir setup-unix $(PYTHON_SETTINGS)
	cd chessql; make -f ../MakeSubdir setup-unix $(PYTHON_SETTINGS)
	cd emailstore; make -f ../MakeSubdir setup-unix $(PYTHON_SETTINGS)
	cd emailextract; make -f ../MakeSubdir setup-unix $(PYTHON_SETTINGS)
	cd pgn_read; make -f ../MakeSubdir setup-unix $(PYTHON_SETTINGS)
	cd chessresults; make -f ../MakeSubdir setup-unix $(PYTHON_SETTINGS)
	cd chesssubmit; make -f ../MakeSubdir setup-unix $(PYTHON_SETTINGS)
	cd chesstabular; make -f ../MakeSubdir setup-unix $(PYTHON_SETTINGS)
	cd chessvalidate; make -f ../MakeSubdir setup-unix $(PYTHON_SETTINGS)
	cd ecfformat; make -f ../MakeSubdir setup-unix $(PYTHON_SETTINGS)
	cd solentware_grid; make -f ../MakeSubdir setup-unix $(PYTHON_SETTINGS)
	cd solentware_misc; make -f ../MakeSubdir setup-unix $(PYTHON_SETTINGS)
	cd uci_net; make -f ../MakeSubdir setup-unix $(PYTHON_SETTINGS)
