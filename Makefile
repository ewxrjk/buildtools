#
# Copyright (C) 2008, 2009 Richard Kettlewell
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

all: verify-perl run-builds.txt stabilize.1

verify-perl:
	perl -wc run-builds
	perl -wc stabilize

stabilize.1: stabilize
	pod2man stabilize > stabilize.1

run-builds.txt: run-builds
	pod2text run-builds > run-builds.txt

install:
	$(INSTALL) -m 755 stabilize $(bindir)/stabilize
	$(INSTALL) -m 644 stabilize.1 $(man1dir)/stabilize.1

uninstall:
	rm -f $(bindir)/stabilize
	rm -f $(man1dir)/stabilize.1

.PHONY: run-builds
