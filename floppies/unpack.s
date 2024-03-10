#!/bin/sh 
. `dirname $0`/settings.s
if [ $# != 1 ]
then
cat<<!

 Usage:
	unpack.s $FD
 or
	unpack.s $NM.raw

!
exit
fi
UP=$ID/$NM-$VE.$PL.unpacked
mkdir $UP $MP $UP/1 $UP/2
test -f license.html&&cp license.html $UP
umount $RD $FD $MP 2>$NU
dd if=$1 of=$RD
mount $RD $MP||FAIL mount $RD $MP failed 
cp -af $MP/* $UP/1
umount $MP
dd bs=1k if=$1 skip=$O1 2>$NU|dd count=$Z2 2>$NU|bzip2 -d 2>$NU >$RD
mount $RD $MP
( cd $MP; find .|cpio -mpdB $UP/2; )
umount $MP
rmdir $MP
ln -s -f $UP/2/usr/bin/buildit.s $UP/buildit.s
echo done
