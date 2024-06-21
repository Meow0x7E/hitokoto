#!/usr/bin/env zsh

tar cvf hitokoto.tar hitokoto.zsh && xz -9evf hitokoto.tar || exit 1
sed -e "s/sha256sums=(.*)/sha256sums=($(sha256sum hitokoto.tar.xz | sed -e "s/ hitokoto.tar.xz//"))/" PKGBUILD
