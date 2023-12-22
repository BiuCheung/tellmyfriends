#!/var/jb/usr/bin/bash
echo "开始删除"
rm -r Packages
rm -r Packages.xz
rm -r Packages.bz2
rm -r Packages.gz
rm -r Packages.zst
echo "删除成功"
echo "开始打包"
dpkg-scanpackages --multiversion debs >> Packages
cat Packages | xz > Packages.xz
cat Packages | bzip2 > Packages.bz2
cat Packages | gzip > Packages.gz
cat Packages | lzma > Packages.lzma
cat Packages | zstd > Packages.zst
echo "打包成功"