Build Tools
===========

polybuild
---------

This script builds a collection of different programs on multiple
hosts.  Currently it can only build bzr and git branches, but it could
be adapted to other VCSs if necessary.

See polybuild.conf for an example configuration.

stabilize
---------

This script pushes changes from a 'development' branch to a 'stable'
branch provided the branch continues to build.

Please send feedback to Richard Kettlewell <rjk@greenend.org.uk>.

Installation
------------

    autoreconf -si        # unless configure already exists
    ./configure
    make check
    sudo make install
    man polybuild
    man stabilize

Copyright
---------

Copyright © 2008-2014 Richard Kettlewell

This program is free software: you can redistribute it and/or modify
it under the terms of the GNU General Public License as published by
the Free Software Foundation, either version 3 of the License, or
(at your option) any later version.

This program is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
GNU General Public License for more details.

You should have received a copy of the GNU General Public License
along with this program.  If not, see <http://www.gnu.org/licenses/>.
