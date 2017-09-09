
cd `dirname $0`/../

rm -fr dist/joyteam-mqtt
mkdir -p dist/joyteam-mqtt

docker rmi -f joyteam-mqtt
docker build -t joyteam-mqtt ./
docker save joyteam-mqtt > dist/joyteam-mqtt/joyteam-mqtt.tar
docker rmi -f joyteam-mqtt

cp -v pack/sh/* dist/joyteam-mqtt

