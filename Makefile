PREFIX=/usr/local

install:
	install -m0755 $(shell pwd)/lulzmode ${PREFIX}/bin
	install -Dm0444 $(shell pwd)/LICENSE /usr/share/licenses/lulzmode/LICENSE

# vim: set noet:
