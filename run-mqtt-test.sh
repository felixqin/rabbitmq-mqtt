
cd `dirname $0`


docker stop joyteam-mqtt
docker rm -f joyteam-mqtt
docker run --name joyteam-mqtt  \
	-v `pwd`/conf/rabbitmq.config:/etc/rabbitmq/rabbitmq.config	\
	-v `pwd`/conf/enabled_plugins:/etc/rabbitmq/enabled_plugins	\
    -p 1883:1883 -p 15675:15675 \
    -d joyteam-mqtt

