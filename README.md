This helps building LineageOS from source like described in https://wiki.lineageos.org/devices/i9100/build

Docker needs to be installed in order to use this scripts. Then just run

./make.sh

and the an docker image will be built and an container started. In the container shell, run

download.sh

in order to download the sources (~20 GB - takes some time) and then run

buildAndroid.sh

in order to start building. 
