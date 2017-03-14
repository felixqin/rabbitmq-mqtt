
cd `dirname $0`

cp *.ez /plugins/

rabbitmq-plugins enable rabbitmq_mqtt
rabbitmq-plugins enable rabbitmq_web_mqtt

#cp conf/enabled_plugins /etc/rabbitmq/

