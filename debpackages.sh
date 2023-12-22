#!/var/jb/usr/bin/bash
dpkg-scanpackages --multiversion ./debs >> ./Packages
cat ./Packages | bzip2 > ./Packages.bz2
cat ./Packages | gzip > ./Packages.gz