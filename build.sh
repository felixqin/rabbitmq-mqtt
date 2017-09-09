
cd `dirname $0`

rm dist -fr

pack/build-docker.sh

cd dist
rm -f joyteam_mqtt_dist.tar.gz
tar zcvf joyteam_mqtt_dist.tar.gz *

