# Copyright 1999-2022 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

DESCRIPTION="Scanner driver for Brother MFC-7440N (brscan3)"
HOMEPAGE="http://support.brother.com"
LICENSE="GPL-2"
SLOT="0"
KEYWORDS="amd64 x86"

RDEPEND="media-gfx/brother-scan3-bin"

pkg_postinst() {
	einfo "Configure scanner using one of the following commands:"
	einfo "- using hostname:   /usr/local/Brother/sane/brsaneconfig3 -a name=MFC-7440N model=MFC-7440N nodename=<hostname>"
	einfo "- using IP address: /usr/local/Brother/sane/brsaneconfig3 -a name=MFC-7440N model=MFC-7440N ip=<IP address>"
}
