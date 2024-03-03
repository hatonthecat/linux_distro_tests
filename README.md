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
