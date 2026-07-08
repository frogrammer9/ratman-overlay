# Copyright 1999-2026 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2
 
EAPI=8

DESCRIPTION="Package list for base ratman workstation"
HOMEPAGE="https://dont-forget-to-create-this"

LICENSE="WTFPL-2"
SLOT="0"
KEYWORDS=""
IUSE=""

DEPEND=""
RDEPEND="
sys-fs/cryptsetup
sys-kernel/ugrd
sys-fs/btrfs-progs
sys-firmware/sof-firmware
sys-kernel/linux-firmware
sys-apps/systemd-utils
sys-boot/efibootmgr
sys-kernel/installkernel
net-misc/networkmanager
sys-process/cronie
app-admin/doas
app-shells/fish
app-portage/gentoolkit
sys-auth/seatd
sys-apps/dbus
dev-vcs/git
"
BDEPEND=""
