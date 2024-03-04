/.;l# linux_distro_tests
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

![snapshot2](https://github.com/hatonthecat/linux_distro_tests/assets/76194453/fefaf96b-8784-4638-956c-05b8ab34a468)

https://exegnulinux.net/

A Google speed test garnered around 18mbps down and 14mbps up (this is a 2010 processor and 100Mbps modem). Its ability to stream video is ameliorated by GTK+ Pipe, which has a built in Youtube/URL streamer. This is ideal since Firefox is not able to load very well on 1GB of RAM. Pages load, but html5 heavy pages are slow to load, if at all. After running a test, GTK+ Pipe is able to stream even 1080p with a buffer. The 720p is more than the resolution of this netbook (1024x600), thus is more than sufficiently fast to play. Over all, an excellent and optimized distro. 10/10 stars. The video actually decodes quite well as it is an NM10 chipset, which is similar (if not the same to) to the [3150](https://www.dell.com/community/en/conversations/laptops-general-locked-topics/netbook-gpu-question-intel-nm10-express-vs-intel-graphics-media-accelerator-3150/647f0591f4ccf8a8debf8b94), only integrated: https://www.intel.com/content/www/us/en/products/sku/47610/intel-nm10-express-chipset/specifications.html
[https://en.wikipedia.org/wiki/Intel_GMA](https://en.wikipedia.org/wiki/Intel_GMA#GMA_3150) https://www.intel.com/content/dam/develop/external/us/en/documents/09nn-graphics-4a-182369.pdf

![image](https://github.com/hatonthecat/linux_distro_tests/assets/76194453/7227a7c7-db17-40eb-93b2-c2972d9c755c) (page 2- MPEG-2 decoding only, but far better than nothing)



https://github.com/trizen/pipe-viewer 

My next tests will be Void Linux and Star Linux. https://voidlinux.org/download/#i686 https://distrowatch.com/table.php?distribution=star I tested void linux last year on a Raspberry pi zero- the furthest I got was the command line https://www.youtube.com/watch?v=3O8irqB0vQ0 due to a USB driver issue. One thing would be nice would be to locate the touchpad driver that my Sylvania netbook uses. I recall it was listed in the Windows 7 device manager but may have forgotten the password for it and may take a while to dig. The USB mouse works fine, but the Sylvania has a simple to use touchpad that doesn't get slimy and makes the netbook far more portable than it typically requires.



