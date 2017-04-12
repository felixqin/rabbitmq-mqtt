FROM rabbitmq:alpine
MAINTAINER qfl2000@gmail.com
ADD opt/rabbitmq_auth_backend_http-3.6.8.ez /plugins/
ADD conf/enabled_plugins /etc/rabbitmq/

