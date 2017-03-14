
DOCKER_NAME=rabbitmq-iotweb-dev


sudo docker rm -f ${DOCKER_NAME}

sudo docker run -d --name ${DOCKER_NAME}    \
    -p 1883:1883 -p 15675:15675 \
    -v `pwd`/opt:/opt           \
    rabbitmq                    \

sudo docker exec -it ${DOCKER_NAME} /bin/sh /opt/install.sh

