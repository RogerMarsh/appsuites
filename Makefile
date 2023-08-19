# Makefile to build source and wheel distributions Unix platforms.

# Msys2 on Microsoft Windows counts as a Unix platform.

# The oldest versions of this makefile had some 'windows' targets for
# MinGW (mingw32.org) to cope with that environments use of native
# Microsoft Windows versions of Python: but mingw32.org has gone.
# Some of these versions had 'setup' targets too while making the
# transitition from 'python setup.py' to 'python -m build' builds.

# For a particular Major.Minor version of Python say
# 'make unix PYTHON_VERSION_UNIX=3.10' for example.

PYTHON_VERSION_UNIX ?= 3
DIST_DIR ?= ../dist

# Collect settings for MakeSubdir

PYTHON_SETTINGS += PYTHON_VERSION_UNIX=$(PYTHON_VERSION_UNIX)
PYTHON_SETTINGS += DIST_DIR=$(DIST_DIR)

# Targets

.PHONY : all unix windows

all:
	@echo "Use target unix on a Unix platform for Unix build"
	@echo "Use 'nmake -f Nmakefile' in a VS Developer Command Prompt for native MS Windows build"
	@echo "(Nmakefile not yet implemented)"

unix:
	cd solentware_base; make -f ../MakeSubdir build-unix $(PYTHON_SETTINGS)
	cd solentware_bind; make -f ../MakeSubdir build-unix $(PYTHON_SETTINGS)
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

windows:
	@echo "Use 'nmake -f Nmakefile' in a VS Developer Command Prompt for native MS Windows build"
	@echo "(Nmakefile not yet implemented)"
