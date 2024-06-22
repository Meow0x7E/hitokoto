# This is an example PKGBUILD file. Use this as a start to creating your own,
# and remove these comments. For more information, see 'man PKGBUILD'.
# NOTE: Please fill out the license field for your package! If it is unknown,
# then please put 'unknown'.

# Maintainer: Meow0x7E <Meow0x7E@outlook.com>
pkgname=hitokoto
pkgver=0.1.1
pkgrel=1
epoch=
pkgdesc="Get 'hitokoto' from the web and output it to the console (prioritizing the use of cached sentences and updating the next sentence in the background)"
arch=("any")
url="https://github.com/Meow0x7E/hitokoto"
license=('unknown')
groups=()
depends=(
	"zsh"
	"curl"
)
makedepends=()
checkdepends=()
optdepends=()
provides=()
conflicts=()
replaces=()
backup=()
options=()
install=
changelog=
source=("hitokoto.zsh")
noextract=()
sha256sums=("623179c3b6af5e96bf649ebe4e090b58357f8b6c05fb3a838b03ac5d4a0ce4c4")
validpgpkeys=()

packager="Meow0x7E <Meow0x7E@outlook.com>"

package() {
	mkdir -vp "${pkgdir}/usr/bin"
	mv -v "${srcdir}/hitokoto.zsh" "${pkgdir}/usr/bin/hitokoto"
	chmod -v 755 "${pkgdir}/usr/bin/hitokoto"
}

# vim:set sts=2 ts=2 sw=2 noexpandtab:
