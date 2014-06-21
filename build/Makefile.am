#
# Copyright (C) 2014 Richard Kettlewell
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

bin_SCRIPTS=polybuild stabilize
man_MANS=polybuild.1 stabilize.1

%: ../%
	rm -f $@.new
	sed < $< > $@.new \
		"s/version *=.*/version='${VERSION}';/"
	chmod 555 $@.new
	mv -f $@.new $@

%.1: %
	podchecker $<
	rm -f $@.new
	pod2man -c 'Build Tools' -r ${VERSION} $< > $@.new
	mv -f $@.new $@

clean-local:
	rm -f stabilize stabilize.1
	rm -f polybuild polybuild.1
