#!2/bin/ash
ST=1/settings.s
. $ST
CK=`du -k $ST`
umount $MP $FD $RD 2>$NU
mkdir $MP
if [ ~`hostname` = ~conn6m ];then NM=tomsrtbt;else NM=`hostname`-tomsrtbt;fi
PL=`lua -e 'write('$PL'+1)'`
BLD=$NM-$VE.$PL
echo -e "NM=$NM\\nPL=$PL">ST
mkfs.minix $RD>$NU
mount $RD $MP
cp -a 1 2 $MP
cd $MP
lua -e '
	readfrom("|du -k -s 2");T=read("*n")
	RZ=floor(1.06*(T))
	readfrom("|ls -Rid `find 2`") temp={}
	X=read() while X do temp[strsub(X,1,7)]=1 X=read() end
	T=0 for a,b in temp do T=T+1 end 
	RI=floor(1.125*(T))
	readfrom("|du 1") T=read("*n")
	Z1=(2*T)+10
	OA=floor((Z1+1)/2)
	print("RZ="..RZ)
	print("RI="..RI)
	print("Z1="..Z1)
	print("OA="..OA)
	readfrom();
	'>>$ID/ST
cd $ID
. ST
umount $MP
sed -e "/mount -o ro /c\\
mount -o ro $FD /fl"<2/etc/rc.S>new
cp new 2/etc/rc.S
dd -q --retry-partial if=/dev/zero of=$RD bs=1k count=$RZ
mkfs.minix -i $RI $RD $RZ>$NU
mount $RD $MP
cd 2
cp -af . $MP
umount $MP
echo compressing root ...
if [ $KERNEL = "bz2bzImage" ]
then
 dd -q --retry-partial if=$RD bs=1k count=$RZ|bzip2 -9>$ID/root.raw.xz
else
 dd -q --retry-partial if=$RD bs=1k count=$RZ|gzip -9>$ID/root.raw.xz
fi
cd ..
lua DZ=$DZ OA=$OA -e '
	readfrom("|filesize root.raw.xz");T=read("*n")
	Z2=floor((T+511)/512)
	O2=(2*OA+Z2)
	FR=(DZ-O2)
	O1=OA+(floor(FR/2))
	O2=O2+(2*floor(FR/2))
	print("O1="..O1)
	print("O2="..O2)
	print("Z2="..Z2)
	print("FR="..FR)
	readfrom();
	'>>ST
. ST
echo -e "$FR sectors free!"
if [ $FR -ge 0 ];then
 cat>>ST<<'!'
dd>$NU 2>&1 <<'(15 seconds...)'


!
echo Welcome to $NM-$VE.$PL by Tom Oehser>>ST
 sed -e "/NM=/,/Welcome/d"<$ST>new
 sed -e "/#AUTO#/r ST"<new>$ST
 [ "$CK" = "`du -k $ST`" ]||FAIL settings.s grew, run build again
 mkdir $BLD
 cp -af $ID/2/usr/bin/*.s $ID/2/*FAQ $BLD
 cp $ST $BLD
 test -f static-fdformat\
  && cp static-fdformat $BLD/fdformat\
  || cp 2/usr/bin/fdformat $BLD
 test -f static-fdflush\
  && cp static-fdflush $BLD/fdflush\
  || cp 2/usr/bin/fdflush $BLD
 test -f license.html\
  && cp license.html $BLD/license.html\
  || echo WARNING license.html not found, do not redistribute without it\!
 dd -q --retry-partial if=/dev/zero of=$RD bs=1k count=$O1
 mkfs.minix -i 16 $RD $O1>$NU
 mount $RD $MP
 cp -af 1/* $MP
 umount $MP
 dd -q if=root.raw.xz of=$RD bs=1k seek=$O1
 mount $RD $MP
 rm $MP/map
 lilo -C -<<-!
	boot=$RD
	disk=$RD
	bios=0x00
	sectors=$SE
	heads=$HE
	cylinders=$CY
	install=$MP/boot.b
	message=$MP/settings.s
	backup=/dev/null
	map=$MP/map
	timeout=150
	read-write
	vga=ask
	prompt
	image=$MP/bz2bzImage
	root=$FD
	append="load_ramdisk=1 prompt_ramdisk=0 ramdisk_start=$O1 parport=0x378,7"
!
 cp $MP/map 1
 umount $MP
 dd -q --retry-partial if=$RD of=$BLD/tomsrtbt.raw count=$DZ
tar -cf - $BLD|gzip>$BLD.tar.gz
 echo Build done, \"cd $BLD\; ./install.s\" to install it.
else
 echo Cannot build, $FR sectors free!
fi
rm -f -r boot.raw root.raw.xz ST new $MP
