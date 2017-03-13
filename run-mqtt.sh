
docker run -d                   \
    -p 1883:1883 -p 15675:15675 \
    -v `pwd`/opt:/opt           \
    rabbitmq

