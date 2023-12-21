#!/var/jb/usr/bin/bash
dpkg-scanpackages --multiversion ./debs >> ./Packages
cat ./Packages | xz > ./Packages.xz
cat ./Packages | bzip2 > ./Packages.bz2
cat ./Packages | gzip > ./Packages.gz
cat ./Packages | lzma > ./Packages.lzma
cat ./Packages | zstd > ./Packages.zst