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

SUBDIRS=build
dist_noinst_SCRIPTS=polybuild.cron polybuild.default
TESTS=syntaxcheck
EXTRA_DIST=polybuild stabilize polybuild.conf README.md syntaxcheck \
	scripts/dist debian/changelog debian/conffiles.polybuild \
	debian/control debian/copyright debian/rules
export srcdir

echo-distdir:
	@echo $(distdir)
echo-version:
	@echo $(VERSION)
