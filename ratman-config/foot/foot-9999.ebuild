# Copyright 1999-2026 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2
 
EAPI=8

inherit git-r3

DESCRIPTION="Ratman foot config"
HOMEPAGE="https://github.com/frogrammer9/foot-rc"

EGIT_REPO_URI="https://github.com/frogrammer9/foot-rc.git"
LICENSE="WTFPL-2"
SLOT="0"
KEYWORDS=""

RDEPEND="
	gui-apps/foot
	media-fonts/dejavu
"

src_install() {
	insinto /etc/xdg/foot
	doins foot.ini
}
