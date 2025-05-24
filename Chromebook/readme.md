Purchased from Goodwill in 2022


Toshiba 13.3 inch CB30-A3120 Chromebook, Celeron 2955U 1.4GHz 2GB, 16GB SSD	

$14.00 
Qty: 1

https://www.cnet.com/reviews/toshiba-chromebook-review/ 

Recent Review in 4k: 
https://www.youtube.com/watch?v=TBhdklIqhM0

The battery never worked, as advertised (I knew what I was getting in to) and included no AC adapter, but I had an old 19V adapter for a netbook so I didn't have to spend extra money to get it working, and not frequent enough to want to have two 19V adapters for netbooks I barely use.  I was able to run [Crouton](https://github.com/dnschneid/crouton) linux with Xfce for a while, but it got old and have been willing to risk a brick with a hardware root.

Enter Mr Chromebox (a coreboot):

https://docs.mrchromebox.tech/docs/firmware/wp/disabling.html

https://docs.mrchromebox.tech/docs/supported-devices.html

https://docs.mrchromebox.tech/images/wp/Leon_wp_screw.jpg 


I found the screw that it mentions:

![P1020387](https://github.com/user-attachments/assets/e129fe97-4654-45cb-bed3-d471694a17e4)

![Battery removed](https://github.com/user-attachments/assets/a821af2d-b658-4d57-b37b-da53d673ca1a)


Now I just need to install an OS.


https://unix.stackexchange.com/questions/786872/64-bit-linux-and-x86-64-v1-micro-architecture

https://coolstar.org/chromebook/windows-install.html (instructions for Full UEFI (regardless of a Windows or Linux install) 

https://etcher.balena.io/#download-etcher

https://www.cpubenchmark.net/cpu.php?cpu=Intel+Celeron+2955U+%40+1.40GHz&id=2073 

https://www.intel.com/content/www/us/en/products/sku/75608/intel-celeron-processor-2955u-2m-cache-1-40-ghz/specifications.html

https://www.videocardbenchmark.net/gpu.php?gpu=Intel+4th+Generation+Haswell+HD&id=3730

https://www.techpowerup.com/cpu-specs/celeron-2955u.c1722 
No AVX, oh well. Still supports virtualization at least. It is still better than an Atom and even a C-50/ E-350. Intel 4th Gen HD Graphics are comparable to HD 4000. My expected performance: https://youtu.be/SG0MvvLwKYo There is only a 16GB soldered SSD, so installing a lightweight OS will be tricky, unless I opt to use the SD slot for a 32 or 64GB card (provided linux recognizes the driver). 

![image](https://github.com/user-attachments/assets/080113d7-ec74-42e3-af9f-166eb5c460a1)

"The Intel Celeron 2955U is a mobile processor with 2 cores, launched in September 2013. It is part of the Celeron lineup, using the Haswell architecture with Socket G2 (988B). Celeron 2955U has 2 MB of L3 cache and operates at 1400 MHz. Intel is making the Celeron 2955U on a 22 nm production node using 1,400 million transistors. The multiplier is locked on Celeron 2955U, which limits its overclocking potential.
With a TDP of 15 W, the Celeron 2955U consumes very little energy. Intel's processor supports DDR3 memory with a dual-channel interface. This processor features the Intel HD integrated graphics solution.
Hardware virtualization is available on the Celeron 2955U, which greatly improves virtual machine performance."

I got into devloper mode, but it's having trouble recognizing Write Protection is disable. Probably need to unplug the laptop and ensure no copper contacts are allowing the connection to remain with write protection. Disabling it in software didn't work, and produced this error:
https://mail.coreboot.org/pipermail/flashrom/2013-December/011933.html

https://flashrom.flashrom.narkive.com/Oj2ljryK/trouble-disabling-write-protection-on-chromebook

https://www.reddit.com/r/chromeos/comments/wu0suk/how_do_i_disable_write_protection_on_this/

Update 3:53pm:
--

There was a small metallic sticker on the firmware Write Protection(WP) screwhole that had to be removed to ensure the copper contacts grounded and the write protection was finally disabled. Coreboot enabled Full UEFI and I was able to load a LiveUSB of https://sourceforge.net/projects/exegnulinux/

It is small enough to fit into 16GB but I might opt for another distro to install on the SSD. KDE always has a lot of software included and something more lightweight will be ideal. 

Installing it ran into a slight issue: I didn't disable SecureBoot, which it required: "Newer machines with UEFI boot mechanism must have "Secure Boot" disabled." https://exegnulinux.net/ while I could simply disable it, I might search for a different distro that has the certificate signed. Not that it's a big deal..

I recorded most of the process. A little trial and error: https://www.youtube.com/playlist?list=PLKvMTg3KKwP1LnchxOVuWaVq1rCkvbMeV

I also am currently installing Linux Mint but will check if the 20GB HDD minimum is a hard minimum. 

Update: Mint runs fine, but there is barely 200MB left after running updates, installing Steam+ its own updates and removing Firefox, Thunderbird, Rhythmbox, Timeshift, LibreOffice and a few other small apps. There is really little space left over since Mesa drivers are an additional 700MB. The only game I was able to play (fit) from my library was [Osmos](https://youtube.com/shorts/I_Em127Z_0o), a 30MB 2009 game with little 3D acceleration. But at least I was able to run it and at 60fps. 
Will remove the OS and install something lighter so that closer to 10GB is left over. 

5-24-2025 Review
--

Despite the old 2 threaded CPU and no working battery, it actually has some advantages from my Lenovo ThinkPad E420. It's much thinner, lighter, has a better integrated video, and the screen is much clearer than the faded Thinkpad Edge screen. The Thinkpad looks ok only when the saturation and brightness are turned up all the way, and that isn't too great for the eyes. There's probably a few lightweight OSes that can get a dock like Cairo or Latte working on a 16GB SSD, but most modern distros need at least 20GB. It might be simpler to start with a minimal install, even a server distro and then add eyecandy later. The GPU can definitely handle it. Also, Steam doesn't recognize external SD cards as drives, so it is not simple to just add a SD or USB drive. There might be a fix for that and there are other GOG clients such as minigalaxy: https://sharkwouter.github.io/minigalaxy/
https://www.howtogeek.com/how-to-get-gog-galaxy-on-linux/
Also, Bottles: https://www.howtogeek.com/running-windows-apps-on-linux-with-bottles/

