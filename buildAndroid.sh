source build/envsetup.sh
echo "Starting breakfast"
breakfast i9100 &> breakfast_i9100.txt

export USE_CCACHE=1
ccache -M 50G
export CCACHE_COMPRESS=1
export ANDROID_JACK_VM_ARGS="-Dfile.encoding=UTF-8 -XX:+TieredCompilation -Xmx4G"
source build/envsetup.sh

echo "Starting brunch"
croot
brunch i9100 &> brunch_i9100.txt

