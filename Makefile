OpenShellScript ?= open
OpenUrlAppleScript ?= openUrl.scpt
DefaultBrowserBin ?= defaultWebBrowser
PREFIX ?= /usr/local
BINDIR ?= $(PREFIX)/bin

CC ?= gcc
CFLAGS ?= -O2

.PHONY: all install uninstall clean

all: $(BIN)

$(BIN):
	$(CC) -o $(DefaultBrowserBin) $(CFLAGS) -framework Foundation -framework ApplicationServices src/main.m

install: $(DefaultBrowserBin)
	install -d $(BINDIR)
	install -m 755 $(DefaultBrowserBin) $(BINDIR)
	install -m 755 $(OpenShellScript) $(BINDIR)
	install -m 644 $(OpenUrlAppleScript) $(BINDIR)

uninstall:
	rm -f $(BINDIR)/$(DefaultBrowserBin)
	rm -f $(BINDIR)/$(OpenShellScript)
	rm -f $(BINDIR)/$(OpenUrlAppleScript)
	
clean:
	rm -f $(BIN)
