#
# Copyright (C) 2008, 2009, 2011, 2013, 2014 Richard Kettlewell
#
# This program is free software: you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation, either version 3 of the License, or
# (at your option) any later version.
#
# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.
#
# You should have received a copy of the GNU General Public License
# along with this program.  If not, see <http://www.gnu.org/licenses/>.
#

dist_bin_SCRIPTS=polybuild stabilize
dist_noinst_SCRIPTS=polybuild.cron polybuild.default
man_MANS=polybuild.1 stabilize.1
TESTS=syntaxcheck versioncheck
EXTRA_DIST=polybuild.conf

%.1: %
	podchecker $<
	rm -f $@.new
	pod2man -c 'Build Tools' -r ${VERSION} $< > $@.new
	mv $@.new $@

clean-local:
	rm -f stabilize.1
	rm -f polybuild.1

export srcdir
export VERSION

version:
	sed < polybuild > polybuild.new \
		's/version =.*/version = "'$(VERSION)'";/'
	chmod +x polybuild.new
	mv polybuild.new polybuild
