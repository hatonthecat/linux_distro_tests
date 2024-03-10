# linux_distro_tests
A test of various linux live USBs


Devuan Daedalus 5.0 
--

Tested Devuan on a 2011 era dual core Acer Aspire netbook (AMD C-50 1.0Ghz, 4GB RAM), with impressive results: https://www.youtube.com/watch?v=9Fqaq7cLIfk 

Reference material

https://www.devuan.org/get-devuan 

devuan_daedalus_5.0.0_amd64_desktop-live.iso	1.4 GiB	2023-Aug-14 17:38

from https://mirror.leaseweb.com/devuan/devuan_daedalus/desktop-live/

"Devuan 5.0 Daedalus was released on August 15, 2023. It is based on Debian Bookworm (12.1) with Linux kernel 6.1."

https://en.wikipedia.org/wiki/Devuan

https://www.cnet.com/reviews/acer-aspire-one-522-review/

![IMG_20240302_220821](https://github.com/hatonthecat/linux_distro_tests/assets/76194453/fa1cb08e-29b9-4d84-a873-272db14c4747)

![IMG_20240302_224433](https://github.com/hatonthecat/linux_distro_tests/assets/76194453/c1a56105-b4e4-4f1f-8775-7e331c5b3dc4)

![IMG_20240302_224121](https://github.com/hatonthecat/linux_distro_tests/assets/76194453/5c0b0f88-31f8-480c-8e94-3c4aee579efc)

https://www.notebookcheck.net/AMD-C-50-Notebook-Processor.40960.0.html
"Inside the C-50 two Bobcat cores can access 512KB level 2 cache per core. In comparison to the Atom processors, the Bobcat architecture uses an "out-of-order" execution and is therefore faster at the same clock speed. However, the performance is far worse than similar clocked Penryn (Celeron) or Danube (Athlon II) cores."

Compared to other netbooks with the E-300 series, it is lacking in AVX (and may or may not be x86_64 v2 compatible, which is being phased out on some distros: https://www.youtube.com/watch?v=TnCkYthXUAc

https://www.cpu-monkey.com/en/compare_cpu-amd_e_300-vs-amd_c_50 
ISA extensions: 

E-300: SSE4a, SSE4.1, SSE4.2, AVX (seems v2 compatible)

C-50: SSE3, SSE4a (v1/partial v2 support)

https://github.com/EI2030/Low-power-E-Paper-OS/blob/master/Hyperlinks%20and%20Scratchpad.md#devuan

Devuan on an Atom N450 1.66Ghz (2 threads) with 1GB of DDR2 RAM
---
Runs significantly slower on a single core, hyperthreaded [Atom N450](https://ark.intel.com/content/www/us/en/ark/products/42503/intel-atom-processor-n450-512k-cache-1-66-ghz.html) from 2010 - Libre Office is barely able to load, and the image loaded into RAM is decreased from ~1.4GB on the C-50 to ~300MB on the Atom 
![P1020060](https://github.com/hatonthecat/linux_distro_tests/assets/76194453/9f17083c-b12a-451d-a49a-e36669098e81)

Running no programs leaves a little under 300MB left (not including video RAM)

![P1020061](https://github.com/hatonthecat/linux_distro_tests/assets/76194453/bd110993-b379-47c7-b846-84088a7e13cd)

Loading Firefox uses all 1GB of the RAM (needs around 370MB according to the previous video- best to use a lighter browser, and the task managers can't be run if it is to load a page at all): 

![P1020062](https://github.com/hatonthecat/linux_distro_tests/assets/76194453/4c427e63-b0ec-47e5-8676-0ec6922a7542)

EXE 
GNU/LINUX (Devuan GNU/Linux with Trinity Desktop)
--

"Exe GNU/Linux (originating from Exmouth, in south-west England) is a "Live Linux image" preconfigured with a selection of applications for general desktop use."

An earlier Google speed test garnered around 18mbps down and 14mbps up (this is a 2010 processor and 100Mbps modem), but later shown to be around 32Mbps. Its ability to stream video is ameliorated by GTK+ Pipe, which has a built in Youtube/URL streamer. This is ideal since Firefox is not able to load very well on 1GB of RAM. Pages load, but html5 heavy pages are slow to load, if at all. After running a test, GTK+ Pipe is able to stream even 1080p with a buffer. The 720p is more than the resolution of this netbook (1024x600), thus is more than sufficiently fast to play. Over all, an excellent and optimized distro. 10/10 stars. The video actually decodes quite well as it is an NM10 chipset, has the [3150](https://www.dell.com/community/en/conversations/laptops-general-locked-topics/netbook-gpu-question-intel-nm10-express-vs-intel-graphics-media-accelerator-3150/647f0591f4ccf8a8debf8b94), only integrated: https://www.intel.com/content/www/us/en/products/sku/47610/intel-nm10-express-chipset/specifications.html
[https://en.wikipedia.org/wiki/Intel_GMA](https://en.wikipedia.org/wiki/Intel_GMA#GMA_3150) https://www.intel.com/content/dam/develop/external/us/en/documents/09nn-graphics-4a-182369.pdf

![image](https://github.com/hatonthecat/linux_distro_tests/assets/76194453/7227a7c7-db17-40eb-93b2-c2972d9c755c) 

(page 2- MPEG-2 decoding only, but far better than nothing)

Playing back a 720p video (seems to be only 30fps though instead of the native 60fps due to the codec) from Youtube (via mpv player) https://en.wikipedia.org/wiki/Mpv_(media_player) (while I have used these before- it is interesting to see their optimization on netbooks, some more than 15 yrs) I sold my EEE PC 700 4G Surf around 2010 and had an Eee PC X101 for a short while after that- it used an Atom N455) https://en.wikipedia.org/wiki/Asus_Eee_PC#Specifications
https://newatlas.com/asus-eee-pc-x101-netbook/19442/ It is approximate in performance to the Sylvania with N450 (1 core, 2 threads)

![snapshot1](https://github.com/hatonthecat/linux_distro_tests/assets/76194453/d40558a2-3135-42fe-bb44-275fe8059710)

https://github.com/trizen/pipe-viewer 

Uses only 262MB RAM without anything running:

![snapshotvv1](https://github.com/hatonthecat/linux_distro_tests/assets/76194453/81aa2477-c0a6-411f-ba7a-96d2f4a6f345)

https://youtu.be/jMUeePXx8Ek 

![snapshot2](https://github.com/hatonthecat/linux_distro_tests/assets/76194453/fefaf96b-8784-4638-956c-05b8ab34a468)

https://exegnulinux.net/

https://youtu.be/jMUeePXx8Ek A test of various applications, all running on less than 1GB of RAM. A distro download showed an average of 30Mbps download speed (3.8 MB/s) when connected to Ethernet:

![vlcsnap-2024-03-05-02h13m04s567](https://github.com/hatonthecat/linux_distro_tests/assets/76194453/17b06de8-2ffb-4eb3-b9d6-3a8bb76115c2)

The 57 is transmit number for data (likely KB/s or Kb/s upload during iso download)

My next tests will be Void Linux and Star Linux. https://voidlinux.org/download/#i686 https://distrowatch.com/table.php?distribution=star I tested void linux last year on a Raspberry pi zero- the furthest I got was the command line https://www.youtube.com/watch?v=3O8irqB0vQ0 due to a USB driver issue. One thing would be nice would be to locate the touchpad driver that my Sylvania netbook uses. I recall it was listed in the Windows 7 device manager but may have forgotten the password for it and may take a while to dig. The USB mouse works fine, but the Sylvania has a simple to use touchpad that doesn't get slimy and makes the netbook far more portable than it typically requires.

Nanolinux
--

https://youtu.be/soMkG-Wmwk4 

https://sourceforge.net/p/nanolinux/wiki/Home/

https://en.wikipedia.org/wiki/Nanolinux

YUMI multibootloader
--
Having used this before, I discovered what might have caused many of my Ventoy ISOs to not load

![image](https://github.com/hatonthecat/linux_distro_tests/assets/76194453/d8f51a8e-a45e-4b4a-bac6-0838af261688)

If using a legacy version of a bootloader that only supports BIOS, need to format disk to exFAT- of course I remember this now, but it is not obvioous with newer and multi-feature bootloaders, although the non-legacy version supports both modes: https://pendrivelinux.com/yumi-multiboot-usb-creator/#YUMI-exFAT

VirtualBox
--

I installed VirtualBox to run a laundry list of distros that I had been trying to test on my Atom N450 netbook, but after getting frustrated with 5 multi-bootloaders that can't simply copy and paste ISO files (with limited luck with Ventoy), I decided to just use virtualization to test the distros I had intended to. While I do like the extra customizability, such as testing linux distros in under 64MB of RAM, I realize it it not always ideal for "real world" conditions. That said, a tutorial out there pointed out a very nice thing, to disable the option to enable virtual disk, which is great because 1: I am booting from RAM and don't need a virtual disk (such as a virtual HDD or SSD), and 2: I have wasted lots of precious disk space on virtual machines that I forgot to delete after testing. Thus using the system RAM for the VM RAM accomplishes what I am intending. Anyways, the first test was simple enough, Damn Small Linux, dsl-4.4.10.iso, which uses Linux Version 2.4.31 and is available on Distrowatch and the DSL website: 

The tutorial I used was from one of the USB Multiboot sites: https://pendrivelinux.com/run-iso-from-windows/

Intelligently, they boldly highlight not to use Virtual Disk (I would have never caught that before). After pressing Start to load the ISO, I got a simple error about virtualization not being enabled. I had an idea how to solve it (BIOS), and enabled it before, but I searched Google for the exact error message to be sure:

"When the error 'not in a hypervisor partition (hvp=0) (verr_nem_not_available)' appears, it means that your computer has the virtualization disabled at the BIOS level and you need to enable this technology to set up a new virtual machine."
https://www.partitionwizard.com/partitionmanager/not-in-a-hypervisor-partition.html

Simple enough- I checked my ASRock UEFI screen, and found SVM, which is another word for AMD-V (Virtualization), disabled. Enabling it and saving the UEFI changes allowed me to load DSL in VirtualBox without the error.

After getting a pop-up about how the Host Key works, I noted Right-Ctrl toggles between the in-VM mouse and the host-mouse.

Having gotten it running, a screenshot:

![VirtualBox_dsl_07_03_2024_23_01_13](https://github.com/hatonthecat/linux_distro_tests/assets/76194453/95a18eaa-e170-44f2-acd2-584dfc19d310)

The version of VirtualBox I am running is VirtualBox 7.0.14r161095 (Qt5.15.2) https://www.virtualbox.org/wiki/Downloads

![image](https://github.com/hatonthecat/linux_distro_tests/assets/76194453/5595b889-bfdd-466f-b871-0e93e236ca60)

Loading Firefox on 32MB caused it to freeze  when I tried to search Google News. 

https://distrowatch.com/table.php?distribution=damnsmall  
https://www.damnsmalllinux.org/2024-download.html

A short video is uploaded. 

https://github.com/hatonthecat/linux_distro_tests/assets/76194453/79c350fd-3e89-44ba-91ce-a6f1ac8eec4d

I also discovered that my AMD C-50 Netbook, the Acer Aspire 522, supports virtualization, which allows me to test VirtualBox 5.2.44 (the last 32-bit version) as I am running a 32-bit version of Windows 10 on my netbook. 800x600 resolutions works best (the display is 1280x720)

PXE on SliTaz (4-8MB test)
--

 ![image](https://github.com/hatonthecat/linux_distro_tests/assets/76194453/1f03eccd-5b17-4ff9-bc11-b500bd8a7425)

[ PXE on SliTaz](https://www.youtube.com/watch?v=OqpwSDJH8rw) video

Tiny SliTaz on 4MB (Day 2)
--
![image](https://github.com/hatonthecat/linux_distro_tests/assets/76194453/17923b31-26f4-4aaf-b683-dd123c8376b1)

Page 2 (none):

![image](https://github.com/hatonthecat/linux_distro_tests/assets/76194453/65d1d42e-035b-495d-ada6-8e08a22cfe2b)

page 3: (none)

![image](https://github.com/hatonthecat/linux_distro_tests/assets/76194453/6f13ac82-8dbe-4e2e-a9cb-3c7706bdf3b4)

page 4 (none)

![image](https://github.com/hatonthecat/linux_distro_tests/assets/76194453/8e46e4d5-f0d1-4087-a359-aae3e70d5a05)

page 5 (changed Pentium to 386)

![image](https://github.com/hatonthecat/linux_distro_tests/assets/76194453/4f4a4f22-74b2-4661-ac52-b19dacf5871a)


![image](https://github.com/hatonthecat/linux_distro_tests/assets/76194453/718d20da-583e-44e6-83cf-51670202f282)

![image](https://github.com/hatonthecat/linux_distro_tests/assets/76194453/a1676048-6ef0-4af3-aca4-da8b230f17b1)

17000 Mhz processsor ;)

![image](https://github.com/hatonthecat/linux_distro_tests/assets/76194453/52ed08ec-5296-4ada-bd6e-f58eb220ed50)


got it to run on 4MB of RAM 

![image](https://github.com/hatonthecat/linux_distro_tests/assets/76194453/7fd9d1fd-7770-4d0e-bfd7-50acd891154c)

 https://en.wikipedia.org/wiki/Time_Stamp_Counter 
 
[Slitaz minimal 386-screen0.webm](https://github.com/hatonthecat/linux_distro_tests/assets/76194453/b18e6eb1-1567-490c-b345-ac9dee90aacf)

Recording settings in VirtualBox:

![image](https://github.com/hatonthecat/linux_distro_tests/assets/76194453/a7bca746-4bd8-413b-ada8-1fce3301fd6a)

(minimum is 32KBps at 8 fps)

[3-screen0.webm](https://github.com/hatonthecat/linux_distro_tests/assets/76194453/101c0127-1c0a-4763-8d0b-55edc251a688)

![image](https://github.com/hatonthecat/linux_distro_tests/assets/76194453/2f19bb96-8049-4f85-947c-557680872ae5)

Less blurry, 110Kbps at 1024x768 is slightly more tolerable video, and for a 386, 9 frames per second is likely to capture each still of CLI logs. With a faster virtualization (e.g. PII), it might need more fps to capture each overlapping frame.

Changed VRAM from 9 to 1 (minimum needed, it appears)

![image](https://github.com/hatonthecat/linux_distro_tests/assets/76194453/4320fdc0-c000-4a6c-bb4c-bb9d93d9096b)

[Test with 1MB VRAM](https://github.com/hatonthecat/linux_distro_tests/blob/main/SliTaz%20386%20with%201MB%20VRAM.mp4) (Files larger than 10MB were uploaded due to embedding limits in GitHub)

[Video](https://github.com/hatonthecat/linux_distro_tests/blob/main/SliTaz%20386%200MB%20VRAM%20and%20then%20no%20display%20controller.mp4) showing OS failing to boot after removing VRAM and then readding 1MB, but removing display controller (2 separate tests)

Note: Windows thinks the base.iso file generated from https://pizza.slitaz.org/tiny/index.php is a virus: 

![image](https://github.com/hatonthecat/linux_distro_tests/assets/76194453/f48c95b5-adbb-4f23-9a8c-0be58243f13b)

Not sure why. But it deletes it and there it doesn't allow much time to keep the file.  If you are able to scan the file and determine if it is a real virus, or an overactive anti-virus scan, feel free to let me know.

Using the tiny.slitaz site instead, I recreated the ISO, but also created a smaller 1.44MB floppy, which I had intended to make anyways:

![image](https://github.com/hatonthecat/linux_distro_tests/assets/76194453/efd8e7a7-bb57-4deb-aad5-683b9d5ce1db) (Floppy boots will be covered more in the next section, PCem: Day 2)

https://elinux.org/Linux_Tiny 

I loaded the floppy as a hard drive but it didn't seem to recognize any of the drives (tried 1.44MB too)

![image](https://github.com/hatonthecat/linux_distro_tests/assets/76194453/bda03acd-8ad3-4dee-b2a1-957dbab3c63e)

It's possible I might need to use the autoconfigure within the BIOS, or some other setting within PCem is not correct. I can also try Bosh. 


PCem
--

Moving on to 90s era-Linux distros, I have been interested in testing the Linux 1.x kernels- Slackware, SLS, and other floppy-based boots require a slightly different emulation system, ones that VirtualBox isn't exactly designed for. The minimum RAM in VirtualBox, for example, is 4MB. Thus, running 386 and 486s on PCem so that it can run on 1MB-16MB is more tailored for this. It also allows me to accurately set the clock speed based on the system they were designed for- 16MHz, 20 MHz, 33, and 40MHz, for example.

https://pcem-emulator.co.uk/downloads.html Having used a 486 SX in the past, wanted to test the 386SX as it would be the minimum to run linux as designed by the early kernels.

Some additional [resources](https://github.com/EI2030/Low-power-E-Paper-OS/blob/master/Hyperlinks%20and%20Scratchpad.md#rtoslinuxlegacy-os-development). I was able to set the RAM and CPU speed, but am still working on loading the Slackware floppies in sequence or in a single image to simulate the process of multi-disk install (potentially a single floppy without the disk size limit isn't checked in some emulation versions?)

![Screenshot from 2024-03-08 14-25-47](https://github.com/hatonthecat/linux_distro_tests/assets/76194453/a902917a-3799-453c-af46-794a19454455)

Slackware 1.1.2 on 3MB RAM (1994) w/ TCP/IP support running at 40Mhz on a 386SX (Linux kernel 0.99.15):

https://www.youtube.com/watch?v=5DBPuZHWEXc https://mirrors.slackware.com/slackware/slackware-1.1.2/ mirror of slackware files. https://en.wikipedia.org/wiki/Slackware If it can run on 4MB of RAM on a real PC, I'd like to emulate that since all the disks appear to be obtainable and can be virtualized. 

PCem (Day 2)
--

I was able to get PCem to recognize my SliTaz floppy as a hard drive. Even if it's not "correct" I'll take it for now.

![image](https://github.com/hatonthecat/linux_distro_tests/assets/76194453/36c88adb-f715-4c94-a84f-e05516625e20) (Select (Y)) 

![image](https://github.com/hatonthecat/linux_distro_tests/assets/76194453/ec2fbb8e-dc98-42c4-8736-2c2b3e0311c6)

Loading with a 486 seems to work.

![image](https://github.com/hatonthecat/linux_distro_tests/assets/76194453/96a2eaa4-cd6a-42cf-928c-73eab5bde6b3)

Video posted (placeholder.

Here it shows 2080k/4096k available:

![image](https://github.com/hatonthecat/linux_distro_tests/assets/76194453/5c0e31f6-e91c-496f-acf6-1899b588210e)

Next test: 4 bottles of 1MB RAM on the wall, 4 bottles of 1MB. You take one down, you pass it around, 3MB bottles of 1MB on the wall:

Result: While more than 2MB was available, it did not let me mount fs with just 2MB+640K.

This error occured even when adding the 40MB HD that others have been able to run Linux 0.1.1 on:

![image](https://github.com/hatonthecat/linux_distro_tests/assets/76194453/62f8a7ae-2066-4883-aa05-646a2ee7fde6)

The idea was that by having the HDD and the floppy there, perhaps it might load less ramdisk onto RAM. Without knowing how to configure what is loaded, I didn't bother to check, at least yet. Why did I use this HDD? It was the only HDD image I already had, and didn't need to download or create another one.

Video posted (placeholder) .

![image](https://github.com/hatonthecat/linux_distro_tests/assets/76194453/6326b6eb-052d-4bc5-8b67-66cb9f424b6c)

Perhaps there are smaller images that only require 2MB RAM? Perhaps (that's not even including write-in-place).

##Part 2 of Day 2

SliTaz Test on 386 in PCem (4MB)
--
I was able to get the 386 to load SliTaz, after configuring the PCEm settings. The floppies did not get recognized in the bootup screen, which suggests PCem fed the floppies using a virtualization drive instead. I did not need to enter the BIOS settings, although I had enough time to press "DEL" to access it. It seems it recognized the 1.44MB image as a 2.8MB disk, although when I tried to update that the BIOS would not load as usual, and resetting to the defaults did not seem to take effect, even after restarting PCEm. The original test accomplished the basic boot, so I might return to this when I decide what software I want to run on it, possibly under the same amount of RAM- perhaps a NanoEditor or something. 

After testing the CLI for commands that don't work, I created a stress-test induced error, or some error that doesn't appear on newer machines:

![image](https://github.com/hatonthecat/linux_distro_tests/assets/76194453/91eb919d-b525-4804-a37d-4c4b33366403)

https://www.bhanage.com/2020/06/linux-kernel-crash-debugging-bug.html It seems like something where a test is run before another scheduled task is not complete

""Scheduling while atomic" indicates that you've tried to sleep somewhere that you shouldn't - like within a spinlock-protected critical section or an interrupt handler.

Things to check:

1. In this case you should check if you are actually returning from some code that could cause the lock not to be released or actually sleeping in some part of the code.
"

https://e2e.ti.com/support/processors-group/processors/f/processors-forum/250383/linux-kernel-3-8-bug-scheduling-while-atomic-using-tun-module It was present as late as linux 3.8 but I am not too interested in this bug, although I will not be surprised if I encounter it frequently. 

Creating a new PCem config for the 386 reset the config (a copy), or deleting the old one and adding a new one with the same name (386)

![image](https://github.com/hatonthecat/linux_distro_tests/assets/76194453/8c0c13d8-1f8d-4f75-a600-8a8993ecb836)

![image](https://github.com/hatonthecat/linux_distro_tests/assets/76194453/f8aa9aca-76f6-4261-ad08-91452e8655d0)

The 40MHz CPU only takes less than a couple minutes to load the console.

Linux 0.1.1
--
I have also been made aware of Linux 0.1.1: https://github.com/Retro-Linux/Oldest-Linux-Ever 

using Bochs: https://www.youtube.com/watch?v=9ccU0SFKGHs 

https://www.osnews.com/story/19123/dusting-off-the-001-linux-kernel/ "Submitted by mariuz  2008-01-07  Linux  26 Comments
Abdel Benamrouche announced that he has updated the original 0.01 Linux kernel to compile with GCC-4.x, allowing it to run on emulators such as QEMU and Bochs. After applying his series of small patches, Abdel explains that the 0.01 kernel can be built on a system running the 2.6 Linux kernel. He added that he’s successfully ported bash-3.2, portions of coreutils-6.9, dietlibc-0.31 (instead of glibc), bin86-0.16.17, make-3.81, ncurses-2.0.7, and vim-7.1 all to run on his modified 0.01 kernel."

I might try to reproduce those results (as in downloading Bochs to see if I can run the same OS, then latching X server onto 0.1.1. Just kidding. Maybe fbdev or SVGAlib- or LVGL something possibly similar?).
https://unix.stackexchange.com/questions/14388/are-there-any-guis-for-linux-that-doesnt-use-x11 https://www.svgalib.org/ 
https://lvgl.io/

Linux 4.1 on RISCV64 (needs at least 36MB of RAM to run in JSLinux-39-40 far better)
--
https://bellard.org/jslinux/vm.html?cpu=riscv64&url=buildroot-riscv64-xwin.cfg&graphic=1&mem=39

RePalm
--
https://dmitry.gr/?r=05.Projects&proj=27.%20rePalm 

https://dmitry.gr/?r=05.Projects&proj=27.%20rePalm#_TOC_f4ed5002aeb6070729ce9b6df22517aa

"Um, but now we need a kernel...
Need a kernel? Why not Linux?
PalmOS needs a kernel with a particular set of primitives. We already discussed some (but definitely not all) reasons why Linux is a terrible choice. Add to that the fact that Cortex-M3 compatible linux is slow AND huge, it was simply not an option. So, what is?

I ended up writing my own kernel. It is simple, and works well. It will run on any Cortex-M class CPU, supports multithreading with priorities, precise timers, mutexes, semaphores, event groups, mailboxes, and all the primitives PalmOS wants like ability to force-pause threads, and ability to disable task switching. It also takes advantage of the MPU to add some basic safety like stack guards. Also, there is great (& fast) support for thread local storage, which comes in handy later. Why write my own kernel, aren't there enough out there? None of the ones out there really had the primitives I needed and bolting them on would take just as long."

A hybrid linux kernel may be explored, as has in the past: https://en.wikipedia.org/wiki/Palm_OS#Modernization
