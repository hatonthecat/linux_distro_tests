#!/bin/sh
. `dirname $0`/settings.s
[ -d /usr/i486-linux-libc5/lib ]&&LD_LIBRARY_PATH=/usr/i486-linux-libc5/lib
if [ ! "$1" ]
 then
  echo
  echo "Don't forget to READ the FAQ."
  echo
  echo "Insert a blank writable 3.5\" floppy diskette then strike ENTER."
  read J
  echo "About to fdformat $FD"
  ./fdformat $FD||FAIL fdformat error
  echo "About to dd floppy image"
fi
dd if=tomsrtbt.raw of=$FD count=$DZ
[ ! "$1" ]||exit 
./fdflush $FD
echo "About to verify floppy image"
cmp tomsrtbt.raw $FD||FAIL compare error 
echo "Succeeded!"
