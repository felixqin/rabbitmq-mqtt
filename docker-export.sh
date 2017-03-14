
cd `dirname $0`


DOCKER_NAME=rabbitmq-iotweb-dev
DOCKER_IMAGE=rabbitmq-iotweb

sudo docker stop ${DOCKER_NAME}

sudo docker rmi -f ${DOCKER_IMAGE}
sudo docker commit ${DOCKER_NAME} ${DOCKER_IMAGE}
sudo docker rm -f ${DOCKER_NAME}

rm -fr out
mkdir -p out
sudo docker save ${DOCKER_IMAGE} > out/${DOCKER_IMAGE}.docker.tar
sudo docker rmi -f ${DOCKER_IMAGE}

