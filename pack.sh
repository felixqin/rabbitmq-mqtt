
cd `dirname $0`

tar Jcvf pack.tar.xz conf opt run-mqtt.sh

rm -fr out
mkdir -p out
mv pack.tar.xz out

