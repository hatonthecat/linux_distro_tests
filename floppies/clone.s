#!/bin/sh
echo
echo Remember the licenses at http://www.toms.net/rb/license.html!
echo
. `dirname $0`/settings.s
echo "Insert current boot diskette, ENTER."
read J
dd if=$FD of=$RD
echo "Insert new writable floppy, ENTER. (n skips fdformat)"
read J
[ "$J" = "n" ]||fdformat $FD
dd if=$RD of=$FD count=$DZ
echo "Verify (y/n)?"
read J
[ "$J" = "n" ]||{ fdflush $FD;dd if=$RD count=$DZ|cmp $FD; }||FAIL 1u
echo "Succeeded!"
