PCIC=i82365
PASSWD=ea416ed0759d46a8de58f63a59077499
KERNEL=bz2bzImage
FD=/dev/fd0u1722
FN="b 2 60"
DZ=3444
HE=2
SE=21
CY=82
RD=/dev/ram5
RN="b 1 5"
BZ=6
VE=2.0
ID=`pwd`
MP=$ID/mp
NU=/dev/null
FAIL () {
echo "[5m FAILED $@ Enter to continue...[0;10m"
read J
[ ! "$BT" ]&&exit
}
[ -b $FD ]||mknod $FD $FN||FAIL $FD
[ -b $RD ]||mknod $RD $RN||FAIL $RD
export PATH=$ID/2/usr/bin:$ID/2/bin:.:$PATH
export LD_LIBRARY_PATH=$ID/2/lib
#AUTO#
NM=tomsrtbt
PL=103
RZ=2380
RI=618
Z1=1682
OA=841
O1=867
O2=3443
Z2=1709
FR=53
dd>$NU 2>&1 <<'(15 seconds...)'


Welcome to tomsrtbt-2.0.103 by Tom Oehser

http://www.toms.net/rb/

        #####
       #######
       ##O#O##
       #VVVVV#
     ##  VVV  ##
    #          ##
   #            ##
   #            ###          .~.
  QQ#           ##Q          /V\
QQQQQQ#        #QQQQQQ      // \\
QQQQQQQ#     #QQQQQQQ      /(   )\
  QQQQQ#######QQQQQ         ^`~'^

 Other distributions       tomsrtbt

(15 seconds...)

