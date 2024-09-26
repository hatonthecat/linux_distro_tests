# linux_distro_tests
A test of various linux live USBs. The objective of this repository is to not only test general distros, but to start with an otherwise "standard, fully featured" alternative distro, and then to examine which features can be removed. Distros that can run on less than 1GB will be tested, but the goal is to get linux to run on 2MB of RAM or less. Microcontrollers and microkernels use little to no memory management, thus they may be included, but a hybrid approach to mixing kernel modules may be explored too.

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

I was able to get PCem to recognize my SliTaz floppy as a 2.88MB drive. It appears HDD 1 and 2 are listed beside Floppy drive 1 and 2, leading me to think C and D were floppy drive letters.  

![image](https://github.com/hatonthecat/linux_distro_tests/assets/76194453/36c88adb-f715-4c94-a84f-e05516625e20) (Select (Y)) 

![image](https://github.com/hatonthecat/linux_distro_tests/assets/76194453/ec2fbb8e-dc98-42c4-8736-2c2b3e0311c6)

Loading with a 486 seems to work.

![image](https://github.com/hatonthecat/linux_distro_tests/assets/76194453/96a2eaa4-cd6a-42cf-928c-73eab5bde6b3)

Video posted (placeholder.

Here it shows 2080k/4096k available:

![image](https://github.com/hatonthecat/linux_distro_tests/assets/76194453/5c0e31f6-e91c-496f-acf6-1899b588210e)

Next test: 4 bottles of 1MB RAM on the wall, 4 bottles of 1MB. You take one down, you pass it around, 3MB bottles of 1MB on the wall:

SliTaz Test on 386 in PCem on 4MB (Part 2 of Day 2)
--

Result: While more than 2MB was available, it did not let me mount fs with just 2MB+640K.

![image](https://github.com/hatonthecat/linux_distro_tests/assets/76194453/b6946059-7ea9-4d6f-81d2-e5b4fcc199de)

That was able to be corrected in the BIOS, and once autoconfig/defaults was selected, saving to CMOS allowed it to reattempt boot on just 2.6MB extended memory (3.3MB):

![image](https://github.com/hatonthecat/linux_distro_tests/assets/76194453/a3c4a0e2-77e0-44cf-8d8f-0680e41d12c8)

![image](https://github.com/hatonthecat/linux_distro_tests/assets/76194453/3f34102c-c336-4ac2-90f4-586f1c1dfc7c)

Pressing F1 allows it to continue.

SliTaz on 3MB*
--

So, less than 4MB is possible, but 3MB is not really enough. The absolute minimum to reach console is around 3.4MB, and even then, it has to drop processes.

*This is with 3.456MB (which displays around 2432+640 when it boots):

![image](https://github.com/hatonthecat/linux_distro_tests/assets/76194453/315da4ef-7dda-4887-9345-8f58ec92468f)

![image](https://github.com/hatonthecat/linux_distro_tests/assets/76194453/56fdda95-892f-4321-b774-00289acce1d2)

Video showing just barely loading:

https://github.com/hatonthecat/linux_distro_tests/assets/76194453/8f5cad1d-b0b3-479b-bc7a-951bdabc8e57

![image](https://github.com/hatonthecat/linux_distro_tests/assets/76194453/a919da21-726d-413c-bb08-afa212dd9bee)

![image](https://github.com/hatonthecat/linux_distro_tests/assets/76194453/593dba4c-4977-4524-b0dd-5f2fab056b3c)

With just a little over 2MB of extended RAM, it attempts to boot, until it fails:

![image](https://github.com/hatonthecat/linux_distro_tests/assets/76194453/c7cf0ae6-0082-4ba5-b908-01365504f6eb)

![image](https://github.com/hatonthecat/linux_distro_tests/assets/76194453/5bd997c5-d21c-4d2b-b9d4-823d12ddfb8b)

This error occured even when adding the 40MB HD that others have been able to run Linux 0.1.1 on:

![image](https://github.com/hatonthecat/linux_distro_tests/assets/76194453/62f8a7ae-2066-4883-aa05-646a2ee7fde6)

The idea was that by having the HDD and the floppy there, perhaps it might load less ramdisk onto RAM. Without knowing how to configure what is loaded, I didn't bother to check, at least yet. Why did I use this HDD? It was the only HDD image I already had, and didn't need to download or create another one.

Video posted (placeholder).

![image](https://github.com/hatonthecat/linux_distro_tests/assets/76194453/6326b6eb-052d-4bc5-8b67-66cb9f424b6c)

Perhaps there are smaller images that only require 2MB RAM? Perhaps (that's not even including write-in-place).

(Note: Some of this will be out of order). I was able to get the 386 to load SliTaz, after configuring the PCEm settings. The floppies did not get recognized in the bootup screen, which suggests PCem fed the floppies using a virtualization drive instead. I did not need to enter the BIOS settings, although I had enough time to press "DEL" to access it. It seems it recognized the 1.44MB image as a 2.8MB disk, although when I tried to update that the BIOS would not load as usual, and resetting to the defaults did not seem to take effect, even after restarting PCEm. The original test accomplished the basic boot, so I might return to this when I decide what software I want to run on it, possibly under the same amount of RAM- perhaps a NanoEditor or something. 

Video [link](https://github.com/hatonthecat/linux_distro_tests/blob/main/SliTaz%20on%20386SX%2033MHz%20in%20PCem%20v17%20with%204MB%20RAM.mp4)

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

Day 3 update: vi seems to be baked into Tiny Slitaz, and can even run on 3MB:

![image](https://github.com/hatonthecat/linux_distro_tests/assets/76194453/f1c55ed1-eb7a-4d17-b6d9-24a2a555f75f)


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

Day 3
--
Virtual Box was used to test a few OSes today. HelenOS is a microkernel which is interesting. Other microkernels Are QNX and Contiki, but I will try those some other time. I was able to get Tinyroot, which is kind of like the SliTaz minimal install I did yesterday but a few extra tools bundled in, and still under 1.44MB. Another OS/boot disk I found was tomsrtbt and cramdisk, which were mid to late-90s bootdisks that preceded LiveCDs and thumbdrives. Some of the concepts in them carried over to the later toolkits, which makes them interesting. I also found out that one of the [early](https://mirrors.slackware.com/slackware/slackware-pre-1.0-beta/) releases of Slackware (with a 1.x kernel) said it [*could*](https://github.com/hatonthecat/linux_distro_tests/blob/main/Reference/mirror.cs.princeton.edu_pub_mirrors_slackware_slackware-2.0.0_INSTALL.TXT.pdf) run on as low as 2MB of RAM ([4MB or less in another FAQ](https://github.com/hatonthecat/linux_distro_tests/commit/ff9787528ff32806c52dbe6fba37f6bc1450f7da)), and since kernels have been known to pare down to as little as 300KB (uClibc), It will be interesting to test these out on a 386 VM that allows me to set it to 2MB (such as PCem, or Qemu). I read of another emulator, spelled similar to PCem, but I don't remember what it was. PCJs is another useful emulator for browser based tests/references- not for saving data exactly (although it might be able to do that too), but when downloading and running the system is too time consuming for a simple test (or when development isn't planned): https://www.pcjs.org/software/pcx86/sys/windows/2.0x/

Tinyroot
--
Initially, I was not able to load with 4MB nor haven't yet- I have not done any optimization tests today- just gathered more information about old boot disks which are still marginally useful (I assume they are more than that too). 4MB of RAM didn't appear to work, so I tried with 64MB of RAM. This also uses a 64-bit kernel, which leads me to think it has some other memory requirements that do not allow it run very low.  As a proof of concept kernel, the file is only 1.2MB but the memory environment might be much higher, even if it is not utilizing it. 

![image](https://github.com/hatonthecat/linux_distro_tests/assets/76194453/03ff82fb-007b-4d85-aea4-0ace7c9ed1a8)

![image](https://github.com/hatonthecat/linux_distro_tests/assets/76194453/691fdfb9-2dd7-455f-bb34-d2251e927e2e)

Tinyroot can be downloaded from: https://github.com/troglobit/tinyroot https://github.com/10maurycy10/tinyroot

I was able to load the vi editor, a modified one of "sorts." It ~~doesn't~~ looks like vi, ~~although I haven't used vi enough to know:~~

![image](https://github.com/hatonthecat/linux_distro_tests/assets/76194453/fd8110f0-274e-426e-af92-a9e2641a9418)

The standard vi (I was thinking of the vim greet screen, which is why I didn't originally recognize it)
![image](https://github.com/hatonthecat/linux_distro_tests/assets/76194453/ebeb431b-b84d-4f72-bd27-ae4329988eef)

https://en.wikipedia.org/wiki/Vi_(text_editor)

I also recorded a short video of tinyroot running in 32MB of RAM, which is embedded here (you'll need an h.264 decoder for it to play smoothly on your device (common today), but it encodes more in 10MB:

https://github.com/hatonthecat/linux_distro_tests/assets/76194453/35d44f83-f2b5-4e03-8337-fe3ac449ce28

I might have gotten 16MB of RAM to run a couple times. The error I get when it doesn't run is this:

https://github.com/hatonthecat/linux_distro_tests/assets/76194453/aa3d40ef-8a79-4b92-ae95-8482e936b4f7

The log files appear to have some more details: 

"00:00:04.486940 fHMForced=true - No raw-mode support in this build!" or maybe a memory issue.

286 and QNX
--
IBM's 286s were tested briefly. There is a 1989 QNX demo file that can connect to the internet on a 286 that I mirrored in this repository from Winworld: https://winworldpc.com/product/qnx/1989-demo, but the emulators require the floppy images to have the right sectors to match (sometimes they are pre-configured). I was able to get to the boot screen for a 286, but not yet recognize a QNX disc. One instruction used a 256 byte sector:

Here is the video (the beeping is the emulator indicating disk activity, and can should be muted if is distracting- no voiceover was used): 

https://github.com/hatonthecat/linux_distro_tests/assets/76194453/63b46231-5b27-49c5-919e-1e4a3cffaa7a

A video showing a different, newer featured, 1.44MB (not the 360K 286) QNX demo working successfully on a 386 was made by a YTer few years ago: https://www.youtube.com/watch?v=vx7cw0wSMMY Also definitely recommended to check out! https://winworldpc.com/product/qnx/144mb-demo

An earlier demo?
"QNX 0.4
Released in 1981 by Quantum Software Systems Ltd.
For IBM PC

This a pre-release of QNX, named "QUNIX"

After the login appears, remove the boot disk, insert the CMD disk in
to drive A:, and insert the USR disk in drive B. Then log in as "/".

These are single sided double density 5.25" floppy disk images.

Important: these are NOT DOS formatted disks, and will not open in
tools like WinImage. The CMD and USR disks are formatted with 
256-byte sectors, 16 sectors per track, with an odd sector interleave.

Use ImageDisk to create usable disks. This software has been tested to
work in the PCE emulator."

From Reddit: "The 256 bytes is the sector size, 26 sectors per track, 77 tracks, that's 2002 sectors total."

Figuring out which settings I can use to match those.

Day 4
--

A colleague has notified me of crunchgen, which is similar to Busybox:

https://man.openbsd.org/crunchgen

Looking up crunchgem further, I found it was compared to allmux in 2018:

https://dl.acm.org/doi/10.1145/3276524

https://github.com/allvm/allvm-tools/blob/master/tools/allmux/allmux.cpp

https://news.ycombinator.com/item?id=18792335

"We did find crunchgen well after the final version of the paper was turned in, so we weren’t able to compare with it.
One key part of allmux does replicate what you did in crunchgen: combine multiple binaries into one, and dispatching on argv[0]. There are also some important differences (and I wish we had known about the tool in time to discusss these in the paper):

-- crunchgen works on binary code, whereas allmux works on compiler IR (LLVM). Compiler IR enables much more sophisticated compiler optimizations to be applied to the mux’ed (or crunched)/ program. For example, we are able to apply link-time optimizations (LTO) across the application-library boundary for both static and dynamic libraries. In fact, we’re able to get more than 45% code size reductions even for a single application and its libraries using LTO (e.g., see the top chart in Fig. 9 – Single Programs).

-- Judging from the man page online, crunchgen works by parsing Makefiles to understand dependences and by using the DSL to specify libs, libs.so, etc. allmux works by adding passes to the compiler (Clang) and relying on the build process to invoke clang for all compile/link steps for all relevant components. This does limit allmux to needing source.

-- crunchgen does not change the behavior of shared libraries, judging by the man page at least. In contrast, allmux also includes shared libraries (linking them in statically in the mix'ed binary) and deduplicates them across applications. This has two benefits: (1) It speeds up program startup, which can be a valuable win in some scenarios, e.g., using a Mux’ed compiler to build a large system with 1000s of source files (see Fig. 1). (2) It achieves large disk and memory reductions compared with static linking, and even some reductions compared with dynamically shared libraries because of the added benefits of LTO (note that LTO is essentially not applicable to dynamically loaded libraries). The combination of BOTH memory reductions and speed improvements compared with either static or dynamic linking is a key benefit of allmux that the crunchgen approach doesn’t aim to get. Of course, this is limited to predetermined sets of applications and libraries."

Nice presentation: https://tc.gtisc.gatech.edu/feast17/papers/allvm.pdf

crunchgen also has a linux fork: https://github.com/ryao/crunch

https://github.com/rui314/8cc A Small C Compiler (no longer active), succeeded by

https://github.com/rui314/chibicc 

"chibicc is yet another small C compiler that implements most C11 features. Even though it still probably falls into the "toy compilers" category just like other small compilers do, chibicc can compile several real-world programs, including Git, SQLite, libpng and chibicc itself, without making modifications to the compiled programs. Generated executables of these programs pass their corresponding test suites. So, chibicc actually supports a wide variety of C11 features and is able to compile hundreds of thousands of lines of real-world C code correctly."

"lcc: Another small C compiler. The creators wrote a book about the internals of lcc, which I found a good resource to see how a compiler is implemented.

An Incremental Approach to Compiler Construction

Rob Pike's 5 Rules of Programming

[1] https://www.drdobbs.com/cpp/increasing-compiler-speed-by-over-75/240158941

DMD does memory allocation in a bit of a sneaky way. Since compilers are short-lived programs, and speed is of the essence, DMD just mallocs away, and never frees."

Linkers
--

https://github.com/rui314/mold?tab=readme-ov-file#mold-a-modern-linker 

https://lld.llvm.org/ "a production-quality linker used by various operating systems and large-scale build systems."

9-16-24
--
Tried a few distros under 128MB RAM

![VirtualBox_slitazLO_26_09_2024_14_26_04](https://github.com/user-attachments/assets/555eeaef-958d-4bb3-bc5e-05332c0ed297)


Had started with Tiny Core and SliTaz, but then checked DSL to see if it ran any differently on a 64 bit machine using a 32-bit Virtualbox 5.2

[dsl 4-screen0.webm](https://github.com/user-attachments/assets/95d59f9c-4164-4f79-bac1-54791358eb2f)

![image](https://github.com/user-attachments/assets/ae73b143-1b1d-4593-b2cf-a43a8967f7ce)

Of note is that changing to 640x480 resolution in the 2nd half of the video instead of the default 1024x768 actually makes the built-in Virtual Box recorder a lot less skippy. The intgerated video, an HD 4000 from 2012-era, even on an i7 (3rd gen), is not as smooth or capable as AMD's hardware-based AVC encoder, so any performance improvement is definitely welcome.

This test is not actually a linux distro, but I was comparing my memory of how well Windows 95 & 98 ran on my ancient 90s era PCs. I had 8MB of RAM, 1MB of VRAM, and 1.0GB HDD ATA 100 disk and wanted to test Windows 95, but Virtualbox requires a virtual startup disk (floppy), so I just tried out Windows 98, which had a 16MB RAM requirement, but I recall being able to install it on 8MB if I remember correctly. The default installation on this Virtual Box was 64MB of RAM, but I will change that to 8MB to test in the subsequent video after the one below:

[Windows 98-screen0.webm](https://github.com/user-attachments/assets/7ac534c7-75a6-4605-8c99-8af7c6e87106)

I can also test other emulators like x86Box and PCEm, but I will see how well(or bad) virtual box is until then. I've already experienced a few crashes, but I hadn't thought it might be related to that.
https://86box.net/
According to WinWorld:
"Note: VMWare and VirtualBox can be problematic with Windows 9x. You may need to disable various acceleration features first, or consider emulators like x86Box or PCem."
https://winworldpc.com/product/windows-98/98-second-edition

![image](https://github.com/user-attachments/assets/68400328-c68e-4959-a791-1d2934780ff6)

Here is with RAM changed to 8MB and 1MB VRAM (just as I was able to do in the past):
![image](https://github.com/user-attachments/assets/b7f5fb68-cf1b-4790-a6b5-9b59f5dce09f)

Back in the day, the only form of entertainment during installation was to stare at pixellated animations of drums moving while waiting for a setup to complete:

![image](https://github.com/user-attachments/assets/491b477f-de79-44da-ab84-a01a01cae60d)


The video playback was not as slow as this- it might just be the emulator or virtual video card that isn't optimized for this system.

I've attached a 15MB file which shows it running in 8MB after installation. See [here](https://github.com/hatonthecat/linux_distro_tests/blob/main/Windows%2098-screen0.webm).

I may have discovered the reason for slow frame rate. VBox was set to VGA, which supported only 16 color mode. While my PC had 640x480, I recall it supported 16-bit color, which was more than 256 color. THe video didn't play well in 16 color, and a demo I tried to play (Golf, not the video, from the CD Rom), said the error was that I didn't have 256 colors. When I went to Screensaver settings, only 16 colors was the max:

[Windows 98-screen0.webm](https://github.com/user-attachments/assets/7e6b009d-9315-4d54-a5d1-4f53b29a937d)

If I am able to locate the driver from disc, I might be able to find it from the included virtual CD rom, Otherwise, it may be easier to reinstall windows 98 and let it auto-recognize the Virtualbox SVGA adapter, or use an XGA adapter that supports more than 16 colors...

I was able to update the recording frame rate to 30fps:

![image](https://github.com/user-attachments/assets/366a140e-0295-4383-abbd-baca46365454)

It had no effect on the slow video playback, but helps with the sizing of the recorded video (no bars around video)

Keep in mind, 60-70fps was possible even in 1998. It seems one of the issues that VirtualBox has with compatibility is that it needs at least 18MB of RAM to run its "own" way:

![image](https://github.com/user-attachments/assets/b4b32959-5da9-4ec9-93da-4550a5dfa20f)

This is one of the reasons to use a different emulator, which more accurately represents the era (some of the Vbox settings include PII, intead of P1)

Using PCEm17, I loaded a Packard Bell Motherboard ROM:

![image](https://github.com/user-attachments/assets/f8d71a45-aa0a-488c-93d3-34a322612ea0)

Setting up the BIOS for the Windows 95 Startup Disc:

![image](https://github.com/user-attachments/assets/2938f32e-ac21-4190-8ec9-e393547fe0d1)

Repeating a process I've done 25 years ago:

![Screenshot from 2024-09-16 17-53-30](https://github.com/user-attachments/assets/10de98f6-f18b-42eb-a6dc-55ae5d55fa50)

![Screenshot from 2024-09-16 17-55-00](https://github.com/user-attachments/assets/b151d12d-5196-464a-a95c-3bd5310b51ad)

![Screenshot from 2024-09-16 17-56-14](https://github.com/user-attachments/assets/684b35db-567b-4fc1-a0e5-339d6a9b7b0c)

This tutorial was helpful for refreshing some of my memory: 

https://olistutorials.wordpress.com/2017/02/25/setting-up-pcem-for-windows-95-games/comment-page-2/ I've attached it [here too](https://github.com/hatonthecat/linux_distro_tests/blob/main/Setting%20up%20PCem%20for%20Windows%2095%20games%20%E2%80%93%20The%20Oligopolist's%20Tutorials.pdf); Post install note is that I did not need to complete some of the optional steps later on- for example, I did not use the Daemon tool, just the PCEm. and the transfer of files from E to C seems to have avoided manually transferring .cab files that could not be found later on.

time to run the setup CD from D:

![Screenshot from 2024-09-16 18-26-13](https://github.com/user-attachments/assets/56917c6c-d7ac-4a04-be8c-e7866dc60493)

![Screenshot from 2024-09-16 18-33-19](https://github.com/user-attachments/assets/bf1c935c-fe28-4060-88fc-56f489f30b5b)

![Screenshot from 2024-09-16 18-34-21](https://github.com/user-attachments/assets/d089f9a1-d59f-4e72-bd69-adfbd4cd2370)

![Screenshot from 2024-09-16 18-41-08](https://github.com/user-attachments/assets/e3ad6678-1ce8-43f2-818b-556561a529b4) 

I experienced [dithering](https://en.wikipedia.org/wiki/Dither) before I knew it was a thing.

"Dither is an intentionally applied form of noise used to randomize quantization error, preventing large-scale patterns such as color banding in images. Dither is routinely used in processing of both digital audio and video data, and is often one of the last stages of mastering audio to a CD.

A common use of dither is converting a grayscale image to black and white, so that the density of black dots in the new image approximates the average gray level in the original."

A resourceful way to create images in low disk space. While Windows 95 may seem dated by today's standards, it still raised the bar in terms of expectations and performance.

Macintoshes weren't the only intuitive PCs:

![Screenshot from 2024-09-16 18-44-14](https://github.com/user-attachments/assets/c7ca8cfb-f45e-4a90-b4a9-60f09eb10615)

Some PCem Stats:

![image](https://github.com/user-attachments/assets/5dcd5dac-ddde-49f0-a21f-6abc145d45f4)

Here it is loading Windows:

[Pcem 2024-09-16 18-57-21-88.webm](https://github.com/user-attachments/assets/2b515a7a-b43d-4d64-8e99-180fdb3448fa)

[Pcem 2024-09-16 19-00-42-51.webm](https://github.com/user-attachments/assets/6dcfd444-7d77-4362-94fa-a03a4fec3bc6)

[windows chime](https://github.com/user-attachments/assets/0d88649c-34c8-4010-a0cb-1b5c27c5004a) 

[video demo playback
](https://github.com/user-attachments/assets/91f0ac18-7183-4295-9d8e-c40b9dc6c045)

[Hover!
](https://github.com/user-attachments/assets/ddae5df6-d1da-4efc-81dc-886859e25c1c)

[Hover!](https://github.com/user-attachments/assets/b8d9631b-3e8d-4a65-965e-6143cd97d3f2) Part 2

[Return of the Arcade
](https://github.com/user-attachments/assets/db3e62e0-cce9-4b98-a84a-aee3082ac53c)

They were the good times

![image](https://github.com/user-attachments/assets/c22cb862-8195-4542-90aa-5862ac854f01)

![image](https://github.com/user-attachments/assets/231dc89c-983d-487d-9270-6e6393b94112)

9-26-24 Windows 95
----

I tested whether Win 95 can run on 4MB of RAM and 2MB. It loads on 4MB, but it recommends adding more. It doesn't load on 2MB:

![Screenshot from 2024-09-26 14-36-45](https://github.com/user-attachments/assets/b5802015-6562-48a2-8e43-d8a59bee404b)

![Screenshot from 2024-09-26 14-40-11](https://github.com/user-attachments/assets/d178732e-ce7f-4c14-8f57-89f1d38a7f09)

It loads on 3MB in Safe Mode with 3 apps running:

![Screenshot from 2024-09-26 15-22-18](https://github.com/user-attachments/assets/f377b069-e49f-48c6-8bd7-70196b0a1eb6)

Safe Mode is a 16 color mode, which doesn't allow apps that require [256 color](https://en.wikipedia.org/wiki/List_of_video_game_console_palettes#:~:text=The%20Picture%20Processing%20Unit%20(PPU)%20used%20in%20the%20Super%20Nintendo,up%20to%20256%20simultaneous%20colors.), such as the Pacman Arcade Trial, but it's really interesting knowing it works when an Ambiq Micro can run on 3.75MB.

![Screenshot from 2024-09-26 16-19-55](https://github.com/user-attachments/assets/fce59382-8bc5-4eea-87b8-91109efc7d88)

![Screenshot from 2024-09-26 16-19-55](https://github.com/user-attachments/assets/9df09b57-4879-47b6-a31f-c5bdf966ce1a)



![Screenshot from 2024-09-26 15-42-48](https://github.com/user-attachments/assets/3f01ffc5-721e-4052-ba21-c7652259393c)

There are x86 emulators for ARM but it's unclear whether there is any microcontroller suppport (e.g. M55)

https://www.techspot.com/news/103082-prism-emulator-make-x86-applications-run-faster-arm.html#:~:text=Prism%20will%20make%20emulated%20(x86,switch%20to%20Apple%20Silicon%20machines.

https://en.wikipedia.org/wiki/Box86
"Box86 is an emulator for x86 userspace tools on ARM Linux systems, allowing such systems to execute video games and other programs that have been compiled for x86 Linux systems.[2][3] Box86 is an alternative to QEMU for user-mode emulation. Box86 also provides dynamic recompilation as well as functionality to intercept dynamic library calls and forward them to equivalent native libraries, allowing applications to run significantly faster than if they were fully emulated.

Box86 also has limited support for running Wine, allowing users to run x86 Windows apps on ARM devices like the Raspberry Pi."

https://box86.org/2024/08/box64-and-risc-v-in-2024/

https://ambiq.com/wp-content/uploads/2023/03/Apollo510-SoC-Product-Brief.pdf

![image](https://github.com/user-attachments/assets/6a4f6a21-994d-4410-b4b5-954ecc0bac62)

So getting the HAL to run on M55 to boot Box86 with Windows95 in Safe Mode with 3MB of RAM, seems doable, running at 250MHz to emulate a 50MHZ-100MHZ machine (though usually a 10-20x machine speed is needed)



Back to linux distros
----
Useful tips for a performance-oriented Pi Zero:

https://www.jeffgeerling.com/blog/2022/install-raspberry-pi-oss-desktop-environment-over-lite-install

https://raspberrytips.com/upgrade-raspbian-lite-to-desktop/

this is basically what I tried to do with the DietPi edition early last year- install a window manager over the server edition/headless dietPi minimal: https://www.youtube.com/watch?v=rOaYlQ8tasY&list=PLKvMTg3KKwP3awRI0W6-OwX09Ij5LRnqZ but I found it too time consuming. Perhaps the Raspbian Lite edition will have a few more conveniences. But these seem most convenient:

---
sudo apt install xserver-xorg raspberrypi-ui-mods

sudo tasksel

---

![image](https://github.com/user-attachments/assets/ee251b19-b6fe-436f-bd45-ccdb22a33bf2)


Despite those convenient commands, I am curious how well it will perform when the 12th Version of Debian's Raspberry Pi, Bookworm, is 500MB:

![image](https://github.com/user-attachments/assets/ff4a22b0-09f4-4450-a1a5-151a9fb7b267)

With the DietPi only being 211MB, and Raspberry Pi being nearly 250% larger, I am doubtful the Bookworm or even the earlier version, Debian version: 11 (bullseye)
Size: 366MB, will work much faster: 

![image](https://github.com/user-attachments/assets/ff68c219-ada4-4ec7-8361-1baa14e039c6)

![image](https://github.com/user-attachments/assets/219c8bce-ad01-4262-8814-55290d6012ac)

![Dietpi on 3B+](https://github.com/user-attachments/assets/cab3fe7a-3c75-4aab-b576-d4b8767f70c2)



9-22-2024 - PiCore & Raspup
--

Got picore (TinyCore Linux) to load on my Raspberry Pi and was able to StartX (first time on a Zero: https://www.youtube.com/watch?v=oE4cbIP5ieQ

using this tutorial: https://www.novaspirit.com/2018/01/09/tiny-core-raspberry-pi-zero-w-install/

http://tinycorelinux.net/13.x/armv6/releases/RPi/ 13.1.0

Also re-ran Raspup 8.2.1. on the Pi0: https://www.youtube.com/watch?v=4KrOSmPjozU 
(much slower- but slightly better than last year's test)


9/26/2024 Installing SliTaz Linux for Idiots Like Me
--

![image](https://github.com/user-attachments/assets/2768cb3f-c22f-44c4-99ea-fdd420216db0)

This completely oversimplified [tutorial](https://arm.slitaz.org/codex/pibook.html#install) explains nothing on how to set up three partitions, which if they were simple enough, would be more user-accessible. But that problem is not unique to this distro.

![image](https://github.com/user-attachments/assets/e30b4550-5727-4886-aeda-151cdb4f4a95)

![image](https://github.com/user-attachments/assets/f173871d-32a8-405a-8dbe-042ba3acd92f)
