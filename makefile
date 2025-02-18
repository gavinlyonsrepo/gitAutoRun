# Makefile to install gitAutoRun program, 01-11-2023
# URL :: https://github.com/gavinlyonsrepo/gitAutoRun
# Gavin Lyons

# Options:
# 1. make install
# 2. make uninstall
# 3. make help


PREFIXPKG ?= $(HOME)/.local/bin
PREFIXDOC ?= $(HOME)/.local/share/doc
PKGNAME = gitautorun

.PHONY: all
all:
	@echo Run \'make help\' for options

.PHONY: install
install:
	@echo '=== START ==='
	@echo 'Installing $(PKGNAME) ....' 
	@echo 'Making directories...'
	@mkdir -vp $(PREFIXPKG)
	@mkdir -vp $(PREFIXDOC)/$(PKGNAME)
	
	@echo 'Installing Script ...'
	@cp -vp main/$(PKGNAME) $(PREFIXPKG)
	@chmod 755 $(PREFIXPKG)/$(PKGNAME)
	
	@echo 'Installing Documentation ...'
	@cp -vp README.md  $(PREFIXDOC)/$(PKGNAME)
	
	@echo '=== DONE ==='


.PHONY: uninstall
uninstall:
	@echo '=== START ==='
	@echo 'Uninstalling $(PKGNAME) ...'
	
	@echo 'Removing Script ...'
	rm -vf $(PREFIXPKG)/$(PKGNAME)
	
	@echo 'Removing Documentation ...'
	rm -vf $(PREFIXPKGDOC)/$(PKGNAME)/README.md
	
	@echo '=== DONE ==='


# Help task , explains the options you can use
.PHONY: help
help:
	@echo '[HELP!]'
	@echo "make install   - Installs " $(PKGNAME)  " to " $(PREFIXPKG)
	@echo "make uninstall - Uninstalls " $(PKGNAME)
	@echo "make help      - Prints help message"
	@echo '***************'
