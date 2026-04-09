PREFIX = /usr
MANDIR = $(PREFIX)/share/man

all:
	@echo Run \'make install\' to install Polleyfetch.

install:
	@mkdir -p $(DESTDIR)$(PREFIX)/bin
	@mkdir -p $(DESTDIR)$(MANDIR)/man1
	@cp -p polleyfetch $(DESTDIR)$(PREFIX)/bin/polleyfetch
	@cp -p polleyfetch.1 $(DESTDIR)$(MANDIR)/man1/polleyfetch.1
	@chmod 755 $(DESTDIR)$(PREFIX)/bin/polleyfetch

uninstall:
	@rm -rf $(DESTDIR)$(PREFIX)/bin/polleyfetch
	@rm -rf $(DESTDIR)$(MANDIR)/man1/polleyfetch.1*

