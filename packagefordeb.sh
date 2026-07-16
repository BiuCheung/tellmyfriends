#!/var/jb/usr/bin/bash
echo "开始删除"
rm Packages Packages.*
echo "删除成功"
echo "开始打包"
dpkg-scanpackages --multiversion debs >> Packages
cat Packages | bzip2 > Packages.bz2
cat Packages | gzip > Packages.gz
cat Packages | xz > Packages.xz
cat Packages | lzma > Packages.lzma
cat Packages | zstd > Packages.zst
echo "打包成功"

echo "开始推送"
git add .
git commit -m "updata"
git push
echo "推送完成"
