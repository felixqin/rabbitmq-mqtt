
cd `dirname $0`

rm -fr dist
mkdir -p dist

docker rmi -f joyteam-mqtt
docker build -t joyteam-mqtt ./
docker save joyteam-mqtt > dist/joyteam-mqtt.tar
docker rmi -f joyteam-mqtt
