# Copyright 1999-2026 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2
 
EAPI=8

inherit git-r3

DESCRIPTION="Ratman neovim config"
HOMEPAGE="https://github.com/frogrammer9/nvim-rc"

EGIT_REPO_URI="https://github.com/frogrammer9/nvim-rc.git"
LICENSE="WTFPL-2"
SLOT="0"
KEYWORDS=""

DEPEND=""
RDEPEND="
	>=app-editors/neovim-0.12

	dev-libs/tree-sitter-c
	dev-libs/tree-sitter-cpp
	dev-libs/tree-sitter-lua
	dev-libs/tree-sitter-bash
	dev-libs/tree-sitter-cmake

	llvm-core/clang
	dev-util/lua-language-server
	dev-util/neocmakelsp
"
BDEPEND=""

src_install() {
    insinto /etc/xdg/nvim
	doins -r *

	fowners -R root:root /etc/xdg/nvim
    fperms -R 0755 /etc/xdg/nvim
    find "${ED}/etc/xdg/nvim" -type f -exec chmod 0644 {} +
}
