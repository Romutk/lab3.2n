Format: 1.0
Source: util-linux
Binary: util-linux, util-linux-locales, mount, bsdutils, fdisk-udeb, cfdisk-udeb, libblkid1, libblkid1-udeb, libblkid-dev, libmount1, libmount1-udeb, libmount-dev, libuuid1, uuid-runtime, libuuid1-udeb, uuid-dev, util-linux-udeb
Architecture: any all
Version: 2.27.160-1
Maintainer: roma <newangel88@mail.ru>
Uploaders: Scott James Remnant <scott@ubuntu.com>, Adam Conrad <adconrad@0c3.net>
Homepage: http://userweb.kernel.org/~kzak/util-linux/
Standards-Version: 3.9.2
Vcs-Browser: http://git.debian.org/?p=users/lamont/util-linux.git
Vcs-Git: git://git.debian.org/~lamont/util-linux.git
Build-Depends: libncurses5-dev, libslang2-dev (>= 2.0.4), gettext:any, zlib1g-dev, dpkg-dev (>= 1.16.0), libselinux1-dev [linux-any], debhelper (>= 5), lsb-release, pkg-config, po-debconf
Package-List: 
 bsdutils deb utils required
 cfdisk-udeb udeb debian-installer extra
 fdisk-udeb udeb debian-installer extra
 libblkid-dev deb libdevel extra
 libblkid1 deb libs required
 libblkid1-udeb udeb debian-installer optional
 libmount-dev deb libdevel extra
 libmount1 deb libs required
 libmount1-udeb udeb debian-installer optional
 libuuid1 deb libs required
 libuuid1-udeb udeb debian-installer optional
 mount deb admin required
 util-linux deb utils required
 util-linux-locales deb utils optional
 util-linux-udeb udeb debian-installer optional
 uuid-dev deb libdevel extra
 uuid-runtime deb libs optional
Checksums-Sha1: 
 6ade580c3401d86abd950363d2690444c7a4aa98 66995816 util-linux_2.27.160-1.tar.gz
Checksums-Sha256: 
 f6ce9abe3ed74cb1b1fe0a2460fe1601328d94f87e2242878f5495e1dbc47aaf 66995816 util-linux_2.27.160-1.tar.gz
Files: 
 ee6cbeb063084c4bd20ab5cbbad8d753 66995816 util-linux_2.27.160-1.tar.gz
Original-Maintainer: LaMont Jones <lamont@debian.org>
