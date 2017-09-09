

DOCKER_NAME=joyteam-mqtt



list_docker()
{
    docker ps -a --format "{{.ID}}|{{.Image}}" | grep "$1" | cut -d'|' -f 1
}


list_docker ${DOCKER_NAME} | while read id; do
    docker stop "$id"
    docker rm -f "$id"
done

docker rmi -f ${DOCKER_NAME}

