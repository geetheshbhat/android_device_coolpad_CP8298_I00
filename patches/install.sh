echo $1
rm $rootdirectory/packages/apps/DotOTA/app/src/main/java/com/ota/updates/utils/Constants.java
rootdirectory="$PWD"
dirs="bionic frameworks/av frameworks/base frameworks/native system/core system/netd packages/apps/Settings hardware/libhardware packages/apps/DotOTA"
for dir in $dirs ; do
	cd $rootdirectory
	cd $dir
	echo "Applying $dir patches..."
	git apply $rootdirectory/device/coolpad/CP8298_I00/patches/$dir/*.patch
	echo " "
done
echo "Changing to build directory..."
cd $rootdirectory
export BUILD_HOST="ghost"
export BUILD_USER="sougata"