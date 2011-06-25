#
# Copyright (C) 2008, 2009, 2011 Richard Kettlewell
#
# This program is free software; you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation; either version 2 of the License, or
# (at your option) any later version.
#
# This program is distributed in the hope that it will be useful, but
# WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
# General Public License for more details.
#
# You should have received a copy of the GNU General Public License
# along with this program; if not, write to the Free Software
# Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA 02111-1307
# USA
#

prefix=/usr/local
exec_prefix=${prefix}
bindir=${exec_prefix}/bin
mandir=${prefix}/share/man
man1dir=${mandir}/man1
INSTALL=install

PACKAGE=rjk-build-tools
VERSION=0.DEV

all: verify-perl polybuild.1 stabilize.1

verify-perl:
	perl -wc polybuild
	perl -wc stabilize

stabilize.1: stabilize
	pod2man -c "Build tools" -r ${VERSION} stabilize > stabilize.1

polybuild.1: polybuild
	pod2man -c "Build tools" -r ${VERSION} polybuild > polybuild.1

clean:
	rm -f stabilize.1
	rm -f polybuild.1

install:
	$(INSTALL) -m 755 stabilize $(bindir)/stabilize
	$(INSTALL) -m 644 stabilize.1 $(man1dir)/stabilize.1
	$(INSTALL) -m 755 polybuild $(bindir)/polybuild
	$(INSTALL) -m 644 polybuild.1 $(man1dir)/polybuild.1

uninstall:
	rm -f $(bindir)/stabilize
	rm -f $(man1dir)/stabilize.1
	rm -f $(bindir)/polybuild
	rm -f $(man1dir)/polybuild.1

dist:
	rm -rf $(PACKAGE)-$(VERSION)
	mkdir -p $(PACKAGE)-$(VERSION)
	mkdir -p $(PACKAGE)-$(VERSION)/debian
	cp Makefile README polybuild stabilize polybuild.conf polybuild.cron polybuild.default \
		$(PACKAGE)-$(VERSION)
	cp debian/control debian/changelog debian/copyright debian/rules \
		$(PACKAGE)-$(VERSION)/debian
	tar cfz $(PACKAGE)-$(VERSION).tar.gz $(PACKAGE)-$(VERSION)
	rm -rf $(PACKAGE)-$(VERSION)

version:
	sed < polybuild > polybuild.new \
		's/version =.*/version = "'$(VERSION)'";/'
	chmod +x polybuild.new
	mv polybuild.new polybuild
