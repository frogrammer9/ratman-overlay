# Copyright 1999-2026 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2
 
EAPI=8

inherit git-r3

DESCRIPTION="Ratman dwl config"
HOMEPAGE="https://github.com/frogrammer9/dwl-rc"

EGIT_REPO_URI="https://github.com/frogrammer9/dwl-rc.git"
LICENSE="GPL-2"
SLOT="0"
KEYWORDS=""

RDEPEND="
	media-libs/fcft
	dev-libs/libinput
	x11-libs/libxkbcommon
	x11-libs/pixman
	dev-libs/wayland
	gui-libs/wlroots:0.18

	gui-apps/foot
"
DEPEND="
	dev-libs/wayland-protocols
	media-libs/fcft
	dev-libs/libinput
	x11-libs/libxkbcommon
	x11-libs/pixman
	dev-libs/wayland
	gui-libs/wlroots:0.18
"
BDEPEND="
	virtual/pkgconfig
"

CONFIG_PROTECT_MASK="${CONFIG_PROTECT_MASK} /etc/dwl-rc"

src_compile() {
	emake
}

src_install() {
	emake DESTDIR="${D}" install

	insinto /etc/dwl-rc
	doins config
}
