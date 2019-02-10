
Debian
====================
This directory contains files used to package cillocoind/cillocoin-qt
for Debian-based Linux systems. If you compile cillocoind/cillocoin-qt yourself, there are some useful files here.

## cillocoin: URI support ##


cillocoin-qt.desktop  (Gnome / Open Desktop)
To install:

	sudo desktop-file-install cillocoin-qt.desktop
	sudo update-desktop-database

If you build yourself, you will either need to modify the paths in
the .desktop file or copy or symlink your cillocoin-qt binary to `/usr/bin`
and the `../../share/pixmaps/cillocoin128.png` to `/usr/share/pixmaps`

cillocoin-qt.protocol (KDE)

