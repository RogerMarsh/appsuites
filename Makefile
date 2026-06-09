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
MAKESUBDIR = make -f ../MakeSubdir build-unix $(PYTHON_SETTINGS)

# Targets

.PHONY : all unix windows
.PHONY : chesstab chessql pgn_read uci_net
.PHONY : chesscalc
.PHONY : emailextract emailstore
.PHONY : ecfformat chessreports chesssubmit chesstabular chessvalidate
.PHONY : solentware_base solentware_bind solentware_grid solentware_misc

all:
	@echo "Use target unix on a Unix platform to build all packages."
	@echo "Use target <package directory> on a Unix platform to build"
	@echo "package.  For example 'make solentware_base'."
	@echo "Use 'nmake -f Nmakefile' in a VS Developer Command Prompt"
	@echo "for native MS Windows build of all packages."
	@echo "(Nmakefile not yet implemented)"

unix: solentware_base solentware_bind chesscalc chesstab chessql \
      emailstore emailextract pgn_read chessreports chesssubmit \
      chesstabular chessvalidate ecfformat solentware_grid \
      solentware_misc uci_net

solentware_base:
	cd $@; $(MAKESUBDIR)

solentware_bind:
	cd $@; $(MAKESUBDIR)

chesscalc:
	cd $@; $(MAKESUBDIR)

chesstab:
	cd $@; $(MAKESUBDIR)

chessql:
	cd $@; $(MAKESUBDIR)

emailstore:
	cd $@; $(MAKESUBDIR)

emailextract:
	cd $@; $(MAKESUBDIR)

pgn_read:
	cd $@; $(MAKESUBDIR)

chessreports:
	cd $@; $(MAKESUBDIR)

chesssubmit:
	cd $@; $(MAKESUBDIR)

chesstabular:
	cd $@; $(MAKESUBDIR)

chessvalidate:
	cd $@; $(MAKESUBDIR)

ecfformat:
	cd $@; $(MAKESUBDIR)

solentware_grid:
	cd $@; $(MAKESUBDIR)

solentware_misc:
	cd $@; $(MAKESUBDIR)

uci_net:
	cd $@; $(MAKESUBDIR)

windows:
	@echo "Use 'nmake -f Nmakefile' in a VS Developer Command Prompt"
	@echo "for native MS Windows build of all packages."
	@echo "(Nmakefile not yet implemented)"
