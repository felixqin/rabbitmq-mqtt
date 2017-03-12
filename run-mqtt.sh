
docker run -d                   \
    -p 1883:1883                \
    -v `pwd`/conf:/etc/rabbitmq \
    rabbitmq

