#!/bin/sh
collectionDir=_PackagesTest
mkdir ${collectionDir}/tmp
cd ${collectionDir}/tmp
wget https://www.gap-system.org/pub/gap/gap-4.11/tar.gz/gap-4.11.0.tar.gz
tar -xf gap-4.11.0.tar.gz
mv gap-*/pkg .
rm -rf gap-*
cd ../..
find ${collectionDir}/tmp/pkg/ -name 'PackageInfo.g' > ${collectionDir}/tmp/list-of-paths-to-packageinfo-files.txt
# use the gap version from the tar ball?
gap etc/generate-package-yml-files-from-PackageInfo-files.g
rm -rf ${collectionDir}/tmp
