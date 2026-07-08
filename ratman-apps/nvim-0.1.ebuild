# Copyright 1999-2026 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2
 
EAPI=8

DESCRIPTION="Ratman neovim config"
HOMEPAGE="https://dont-forget-to-create-this"

EGIT_REPO_URI=""
LICENSE="WTFPL"
SLOT="0"
KEYWORDS=""
IUSE=""

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
	dev-util/cmake-language-server
	app-text/texlab
	
"
BDEPEND=""
