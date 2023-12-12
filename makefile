# Makefile to install gitAutoRun program, 01-11-2023
# URL :: https://github.com/gavinlyonsrepo/gitAutoRun
# Gavin Lyons

# Options:
# 1. make install
# 2. make uninstall


PREFIXPKG ?= $(HOME)/.local/bin
PREFIXDOC ?= $(HOME)/.local/share/doc
PKGNAME = gitautorun

all:
	@echo Run \'make install\' to install $(PKGNAME).
	@echo 'or'
	@echo Run \'make uninstall\' to uninstall $(PKGNAME).
	
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

uninstall:
	@echo '=== START ==='
	@echo 'Uninstalling $(PKGNAME) ...'
	
	@echo 'Removing Script ...'
	rm -vf $(PREFIXPKG)/$(PKGNAME)
	
	@echo 'Removing Documentation ...'
	rm -vf $(PREFIXPKGDOC)/$(PKGNAME)/README.md
	
	@echo '=== DONE ==='

