#!/bin/bash
##########################################################################
# Copyright (C) 2000-2006 DFKI GmbH.
# All rights reserved. Use is subject to license terms.
#
# Permission is hereby granted, free of charge, to use and distribute
# this software and its documentation without restriction, including
# without limitation the rights to use, copy, modify, merge, publish,
# distribute, sublicense, and/or sell copies of this work, and to
# permit persons to whom this work is furnished to do so, subject to
# the following conditions:
# 
#  1. The code must retain the above copyright notice, this list of
#     conditions and the following disclaimer.
#  2. Any modifications must be clearly marked as such.
#  3. Original authors' names are not deleted.
#  4. The authors' names are not used to endorse or promote products
#     derived from this software without specific prior written
#     permission.
# 
# DFKI GMBH AND THE CONTRIBUTORS TO THIS WORK DISCLAIM ALL WARRANTIES WITH 
# REGARD TO THIS SOFTWARE, INCLUDING ALL IMPLIED WARRANTIES OF 
# MERCHANTABILITY AND FITNESS, IN NO EVENT SHALL DFKI GMBH NOR THE 
# CONTRIBUTORS BE LIABLE FOR ANY SPECIAL, INDIRECT OR CONSEQUENTIAL 
# DAMAGES OR ANY DAMAGES WHATSOEVER RESULTING FROM LOSS OF USE, DATA OR 
# PROFITS, WHETHER IN AN ACTION OF CONTRACT, NEGLIGENCE OR OTHER TORTIOUS 
# ACTION, ARISING OUT OF OR IN CONNECTION WITH THE USE OR PERFORMANCE OF 
# THIS SOFTWARE.
##########################################################################
# MARY TTS server
##########################################################################

# Set the Mary base installation directory in an environment variable:
BINDIR="`dirname "$0"`"
export MARY_BASE="`(cd "$BINDIR"/.. ; pwd)`"


java -showversion -ea -Xms40m -Xmx1g -cp "$MARY_BASE/lib/*" -Dmary.base="$MARY_BASE" $* marytts.server.Mary