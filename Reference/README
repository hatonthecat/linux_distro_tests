These are 1.44 MB bootkernel images for Slackware Linux 2.0.0.

These disks currently use Linux 1.0.9.

You'll need one of these to get Linux started on your system so that you can
install it. Because of the possibility of collisions between the various Linux
drivers, several bootkernel disks have been provided. You should use the one
with the least drivers possible to maximize your chances of success. All of
these disks support UMSDOS.

You will be using the bootkernel disk to boot a root-install disk. See the
rootdsks.144 directory for these.

A bootkernel disk is created by uncompressing the image with GZIP.EXE 
(Example: GZIP -d bare.gz), and then writing the image out with RAWRITE.EXE.

RAWRITE is interactive and reasonably user-friendly.

--------------------------------------------------------------------------------
Here's a description of the disks:

bare.gz     - contains IDE hard drive drivers only.
cdu31a.gz   - contains IDE and SCSI drivers, plus Sony CDU31/33a CD drivers.
mitsumi.gz  - contains IDE and SCSI drivers, plus the Mitsumi CD driver.
modern.gz   - an experimental 1.1.18 bootdisk - this has drivers for everything
              except network cards and the Sony 535 CD-ROM. If you have driver
              conflicts with a different disk, you might want to try this one.
ncr.gz      - a 1.1.19 bootdisk with Trantor T128 and NCR53c810 PCI SCSI 
              drivers. See also the ncr1 and ncr2 disks in ./slakware.
net.gz      - contains IDE hard drive and ethernet drivers.
sbpcd.gz    - contains IDE and SCSI drivers, plus SB Pro/Panasonic CD drivers.
scsi.gz     - contains IDE hard drive, SCSI hard drive, and SCSI CD-ROM drives.
scsinet.gz  - contains IDE hard drive, SCSI hard drive, SCSI CD-ROM, and 
              ethernet drivers.
sony535.gz  - contains IDE and SCSI drivers, plus Sony 535/531 CD drivers.
xt.gz       - contains IDE hard drive and XT hard drive drivers.
--------------------------------------------------------------------------------

IMPORTANT HELPFUL HINTS: (AND WHAT TO DO IF THE INSTALLED SYSTEM WON'T BOOT)

The kernels provided with the Slackware A series (idekern and scsikern) are
reasonably generic to maximize the chances that your system will boot after
installation. However, you should compile a custom kernel after installing,
selecting only the drivers your system requires. This will offer optimal
performance. You'll need to recompile your kernel to enable support for non-SCSI
CD-ROM drives, bus-mice, sound cards, and many other pieces of hardware. The
drivers could not be included with the pre-compiled kernels because they cause
system hangs and other compatiblity problems for people that don't have the
hardware installed.

On a similar note, any time you use one kernel to install, and a different 
kernel the first time the installed system is started, you run the risk that
the second kernel won't be compatible for some reason. If your system fails
to reboot after installation, you'll have to compile a custom kernel for your
hardware. Follow these steps:

0. If you haven't installed the C compiler and kernel source, do that.

1. Use the bootkernel disk you installed with to start your machine. At the LILO
   prompt, enter: 
   
     mount root=/dev/hda1
                ^^^^^^^^^ Or whatever your root Linux partition is.

   Ignore any error messages as the system starts up.

2. Log in as root, and recompile the kernel with these steps. (Comments will be
   placed in parenthesis) 

   cd /usr/src/linux
   make config   (Choose your drivers. Repeat this step until you are satisfied
                  with your choices)
   
   If you are using LILO, this will build and install the new kernel:

     make dep ; make clean ; make zlilo 
     rdev -R /vmlinuz 1

   If you are using a bootdisk, these commands will build the kernel and create
   a new bootdisk for your machine:

     make dep ; make clean ; make zImage
     rdev -R zImage 1    (If you use UMSDOS for your root partition, use
                          'rdev -R zImage 0' instead)
     rdev -v zImage -1
     rdev zImage /dev/hda1   (replace /dev/hda1 with the name of your root Linux
                              partition)
     (Now, put a disk into your floppy drive to be made into the new bootdisk:)
     fdformat /dev/fd0H1440 
     cat zImage > /dev/fd0

That should do it! You should now have a Linux kernel that can make full use of
all supported hardware installed in your machine. Reboot and try it out.

Good luck!

---
Patrick Volkerding
volkerdi@mhd1.moorhead.msus.edu

PS - Bug reports welcome. Requests for help may be answered if time permits.
     I've been happy to do this in the past, but lately I've had both a lot 
     more work to do and a lot more mail to deal with. It's just not as possible
     to keep up with my mail as it once was.
