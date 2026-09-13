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
sys-firmware/sof-firmware
sys-kernel/linux-firmware
net-misc/networkmanager
sys-process/cronie
app-admin/doas
app-shells/fish
app-portage/gentoolkit
sys-auth/seatd
sys-apps/dbus
dev-vcs/git
net-misc/openssh
app-shells/fish
app-editors/neovim

ratman-config/fish
ratman-config/neovim
"
BDEPEND=""

pkg_postinst() {
	rc-update add NetworkManager default
	rc-update add chronie default
	rc-update add seatd default
}
