
cd `dirname $0`


DOCKER_NAME=rabbitmq-iotweb-pack
DOCKER_IMAGE=rabbitmq-iotweb

sudo docker rm -f ${DOCKER_NAME}
sudo docker run -it --name ${DOCKER_NAME}    \
    -v `pwd`/opt:/opt           \
    rabbitmq                    \
    /opt/install.sh
sudo docker stop ${DOCKER_NAME}

sudo docker rmi -f ${DOCKER_NAME}
sudo docker commit ${DOCKER_NAME} ${DOCKER_IMAGE}
sudo docker rm -f ${DOCKER_NAME}

rm -fr out
mkdir -p out
sudo docker save ${DOCKER_IMAGE} > out/${DOCKER_IMAGE}.docker.tar
sudo docker rmi -f ${DOCKER_IMAGE}

