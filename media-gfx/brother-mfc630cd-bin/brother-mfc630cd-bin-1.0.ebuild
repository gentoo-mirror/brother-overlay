# Copyright 1999-2022 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

DESCRIPTION="Scanner driver for Brother MFC-630CD (brscan2)"
HOMEPAGE="http://support.brother.com"
LICENSE="GPL-2"
SLOT="0"
KEYWORDS="amd64 x86"

RDEPEND="media-gfx/brother-scan2-bin"

pkg_postinst() {
	einfo "Configure scanner using one of the following commands:"
	einfo "- using hostname:   /usr/local/Brother/sane/brsaneconfig2 -a name=MFC-630CD model=MFC-630CD nodename=<hostname>"
	einfo "- using IP address: /usr/local/Brother/sane/brsaneconfig2 -a name=MFC-630CD model=MFC-630CD ip=<IP address>"
}
