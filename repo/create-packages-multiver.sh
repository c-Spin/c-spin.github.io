#!/bin/zsh
rm Packages.gz
rm Packages.bz2
dpkg-scanpackages --multiversion Files /dev/null > Packages
gzip -c9 Packages > Packages.gz
bzip2 -c9 Packages > Packages.bz2
