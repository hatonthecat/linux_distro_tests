A folder for linux images <2MB

tomsrtbt 2.0 (2002)

Notes 
--
you are entering a *scratchpad zone.* non-linear. quotes may or may not be used here and thus I do not attribute them to myself 

Begin3
Title:  rescue02          
Version: .02        
Entered-date: 4/17/96  
Description: This is a rescue disk that you can use in case of a crash to
recover your Linux partition. It will boot linux 1.3.84 to a ram disk which
contains commands to check your file system or restore a tape backup. It
uses ELF binaries but it has enough commands so that it can be used on
any system. The kernel has support for IDE and Adaptec 1542 and ncr53c7,8xx.
There are modules that can be loaded after booting for all other SCSI cards.
It probably won't work on systems with 4 mb of ram since it uses a 3 mb ram
disk.
Keywords: compressed ramdisk, lilo
Author:         
Maintained-by:  John Comyns (jcomyns @ panix . com)
Primary-site:   sunsite.unc.edu /pub/Linux/system/Recovery
Alternate-site: 
Original-site:  
Platform:  Linux     
Copying-policy: Freely distributable.
End

https://www.ibiblio.org/pub/Linux/system/recovery/rescue02.lsm

A.1. Pre-made Bootdisks
These are sources for distribution bootdisks. Please use one of the mirror sites to reduce the load on these machines.

Slackware bootdisks, rootdisks and Slackware mirror sites

RedHat bootdisks and Red Hat mirror sites

Debian bootdisks and Debian mirror sites

In addition to the distribution bootdisks, the following rescue disk images are available. Unless otherwise specified, these are available in the directory http://metalab.unc.edu/pub/Linux/system/recovery/!INDEX.html

tomsrtbt, by Tom Oehser, is a single-disk boot/root disk based on kernel 2.0, with a large set of features and support programs. It supports IDE, SCSI, tape, network adaptors, PCMCIA and more. About 100 utility programs and tools are included for fixing and restoring disks. The package also includes scripts for disassembling and reconstructing the images so that new material can be added if necessary.

rescue02, by John Comyns, is a rescue disk based on kernel 1.3.84, with support for IDE and Adaptec 1542 and NCR53C7,8xx. It uses ELF binaries but it has enough commands so that it can be used on any system. There are modules that can be loaded after booting for all other SCSI cards. It probably won't work on systems with 4 mb of ram since it uses a 3 mb ram disk.

resque_disk-2.0.22, by Sergei Viznyuk, is a full-featured boot/root disk based on kernel 2.0.22 with built-in support for IDE, many difference SCSI controllers, and ELF/AOUT. Also includes many modules and useful utilities for repairing and restoring a hard disk.

cramdisk images, based on the 2.0.23 kernel, available for 4 meg and 8 meg machines. They include math emulation and networking (PPP and dialin script, NE2000, 3C509), or support for the parallel port ZIP drive. These diskette images will boot on a 386 with 4MB RAM. MSDOS support is included so you can download from the net to a DOS partition.

https://legacy.redhat.com/pub/redhat/linux/7.2/en/doc/HOWTOS/other-formats/html/Bootdisk-HOWTO/premade.html

https://mirrors.slackware.com/slackware/slackware-2.0.0/
https://mirror.cs.princeton.edu/pub/mirrors/slackware/slackware-2.0.0/INSTALL.TXT
You need at least 4 megabytes of memory in your machine. Technically,
  Linux will run with only 2 megs, but most installations and software
  require 4. The more memory you have, the happier you'll be. I suggest
  8 or 16 megabytes if you're planning to use X-Windows.

  [DIR]	Parent Directory	 	-	 	 
[DIR]	slackware-pre-1.0-beta/	18-Apr-1993 06:03	-	 	 
[DIR]	slackware-2.0.0/	21-Jul-1994 23:52	-	 	 
[DIR]	slackware-3.3/	03-Oct-1997 07:00	-	 

https://mirrors.slackware.com/slackware/slackware-pre-1.0-beta/
https://plug-mirror.rcac.purdue.edu/slackware/slackware-3.3/UPGRADE.TXT

https://mirrors.slackware.com/slackware/slackware-1.01/RELEASE
  Kernel source and image at .99pl12 Alpha.
    [compiled with these options: math emulation support, normal hard drive
    support, full SCSI support, TCP/IP, System V IPC, -m486, minix fs, ext2 fs,
    msdos fs, nfs, proc support, and PS/2 style mouse support. You may need to
    recompile if you have some other type of busmouse. The kernel was compiled 
    with libc 4.4.1, g++ 2.4.5]


https://mirrors.slackware.com/slackware/slackware-2.0.1/LOWMEM.TXT
    There will be times when even that method doesn't save enough memory to allow
installation. Here's another method that may possibly even allow installation
to a machine with 2 megabytes:

1. If you have a second floppy drive, great -- you'll want to use that for the
   rootdisk. If not, you'll have to make do with the rootdisk in your boot
   drive. With the rootdisk in the boot drive you won't be able to install from
   floppy disks or make a bootdisk at the end of the installation process, 
   since the disk will be "mounted" in the boot drive and cannot be removed (no
   matter what the screen tells you) until the machine is rebooted. Make a 
   rootdisk using RAWRITE.EXE for the floppy drive you selected.
2. Unzip lodlin15.zip (look in /kernels) in a directory on your DOS partition.
3. Select an appropriate kernel from a subdirectory under /kernels. The
   /bootdsks.12/WHICH.ONE document might be helpful in selecting the proper
   one for your hardware. Copy it into the directory where you put loadlin.
4. Put the rootdisk (NOT write protected) into the floppy drive, and use this
   command to boot it:

   loadlinx scsi root=b: ramdisk=0
            ^^^^      ^^
            ||||      This should be the drive you put the disk in.
            This is the name of the kernel you selected. [this schematic is viewable in editor mode]

   Begin3
Title:          
Title:		cramdisk-2.0.lynx.tgz - bootable compressed ramdisk 
Version:	2.0
Entered-date:	19OCT96
Description:	cramdisk-2.0.lynx contains a bootable floppy image that fits 
		on a single 1.44 MB floppy. The kernel (2.0.23) includes 
		math emulation and networking (PPP and dialin script, 
		NE2000, 3C509), and the file system contains pppd, rlogin, 
		tar and a color version of the network browser lynx (2.6). 
		The floppy image will boot on a 3/4/586 with 8MB RAM. 
		For networking, the IP addresses and/or ppp dialin 
		sequence need to be set. A method for modifying the 
		floppy image is included.  
Keywords:	kernel, ramdisk, networking, compress, bootdisk, lynx
Author:		rob@ retina. anatomy. upenn. edu 
Maintained-by:  
Primary-site:	sunsite.unc.edu /pub/Linux/kernel/images/
		1511523 cramdisk-2.0.lynx.tgz
Alternate-site:	retina. anatomy.upenn.edu /pub/rob/
Original-site:  
Platforms:	386/486/pentium with at least 8 MB RAM, 1.44 MB floppy boot.
Copying-policy: GPL
End
https://www.ibiblio.org/pub/Linux/system/recovery/images/cramdisk-2.0.lynx.lsm
