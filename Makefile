### Makefile to build source release on Windows or Unix platform

PATH_TO_PYTHON ?= C:
PYTHON_VERSION ?= 38
PYTHON_VERSION_UNIX ?= 3.8
SDIST_FORMATS ?= zip,gztar
DIST_DIR ?= ../dist

### Collect settings for MakeSubdir

PYTHON_SETTINGS = PATH_TO_PYTHON=$(PATH_TO_PYTHON)
PYTHON_SETTINGS += PYTHON_VERSION=$(PYTHON_VERSION)
PYTHON_SETTINGS += PYTHON_VERSION_UNIX=$(PYTHON_VERSION_UNIX)
PYTHON_SETTINGS += SDIST_FORMATS=$(SDIST_FORMATS)
PYTHON_SETTINGS += DIST_DIR=$(DIST_DIR)

### Targets

.PHONY : all windows unix

all:
	@echo "Use target windows or unix depending on platform running make"

windows:
### Source distributions
	cd solentware_base; make -f ../MakeSubdir windows $(PYTHON_SETTINGS)
	cd chesscalc; make -f ../MakeSubdir windows $(PYTHON_SETTINGS)
	cd chesstab; make -f ../MakeSubdir windows $(PYTHON_SETTINGS)
	cd chessql; make -f ../MakeSubdir windows $(PYTHON_SETTINGS)
	cd emailstore; make -f ../MakeSubdir windows $(PYTHON_SETTINGS)
	cd emailextract; make -f ../MakeSubdir windows $(PYTHON_SETTINGS)
	cd pgn_read; make -f ../MakeSubdir windows $(PYTHON_SETTINGS)
	cd chessresults; make -f ../MakeSubdir windows $(PYTHON_SETTINGS)
	cd solentware_grid; make -f ../MakeSubdir windows $(PYTHON_SETTINGS)
	cd solentware_misc; make -f ../MakeSubdir windows $(PYTHON_SETTINGS)
	cd uci_net; make -f ../MakeSubdir windows $(PYTHON_SETTINGS)

unix:
### Source distributions
	cd solentware_base; make -f ../MakeSubdir unix $(PYTHON_SETTINGS)
	cd chesscalc; make -f ../MakeSubdir unix $(PYTHON_SETTINGS)
	cd chesstab; make -f ../MakeSubdir unix $(PYTHON_SETTINGS)
	cd chessql; make -f ../MakeSubdir unix $(PYTHON_SETTINGS)
	cd emailstore; make -f ../MakeSubdir unix $(PYTHON_SETTINGS)
	cd emailextract; make -f ../MakeSubdir unix $(PYTHON_SETTINGS)
	cd pgn_read; make -f ../MakeSubdir unix $(PYTHON_SETTINGS)
	cd chessresults; make -f ../MakeSubdir unix $(PYTHON_SETTINGS)
	cd solentware_grid; make -f ../MakeSubdir unix $(PYTHON_SETTINGS)
	cd solentware_misc; make -f ../MakeSubdir unix $(PYTHON_SETTINGS)
	cd uci_net; make -f ../MakeSubdir unix $(PYTHON_SETTINGS)
