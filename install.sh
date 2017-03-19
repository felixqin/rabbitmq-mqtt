
cd `dirname $0`

docker rmi -f joyteam-mqtt
docker load < dist/joyteam-mqtt.tar

