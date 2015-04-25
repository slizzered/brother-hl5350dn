FILES = brother-hl5350dn.install lpr-license.txt PKGBUILD cupswrapper-license.txt

all: source package

src: source

pkg: package

source: $(FILES)
	rm -f brother-hl5350dn-*.src.tar.gz 
	makepkg --source

package: $(FILES)
	rm -f brother-hl5350dn-*.pkg.tar.xz 
	makepkg -p PKGBUILD

clean:
	rm -f *.pkg.tar.xz
	rm -f *.src.tar.gz
	rm -rf pkg
	rm -rf src
	rm -f cupswrapperHL5350DN-2.0.4-1.i386.rpm
	rm -f hl5350dnlpr-2.0.3-1.i386.rpm
	rm -rf brother-hl5350dn
