# Copyright 1999-2026 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2
 
EAPI=8

inherit git-r3

DESCRIPTION="Ratman fish config"
HOMEPAGE="https://github.com/frogrammer9/fish-rc"

EGIT_REPO_URI="https://github.com/frogrammer9/fish-rc.git"
LICENSE="WTFPL-2"
SLOT="0"
KEYWORDS=""

RDEPEND="
	app-shells/fish
"

CONFIG_PROTECT_MASK="${CONFIG_PROTECT_MASK} /etc/fish"

src_install() {
	insinto /etc/fish
	doins config.fish 

	insinto /etc/fish/conf.d
	doins conf.d/*

	insinto /etc/fish/functions
	doins functions/*
}
