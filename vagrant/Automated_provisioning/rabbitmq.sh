#!/bin/bash

# update for CentOS9 stream
# cd /tmp/
# wget http://packages.erlang-solutions.com/erlang-solutions-2.0-1.noarch.rpm

# install and configure rabbitmq-server, and erlang yum repo
# curl -s https://packagecloud.io/install/repositories/rabbitmq/rabbitmq-server/script.rpm.sh | sudo bash
# curl -s https://packagecloud.io/install/repositories/rabbitmq/erlang/script.rpm.sh | sudo bash
#
# # enable rabbitmq_rabitmq-server yum repo cache
# sudo yum makecache -y --disablerepo='*' --enablerepo='rabbitmq_rabbitmq-server'

sudo yum update -y

# now we install a configuration to enable repo for rabbitmq-server
sudo yum install -y centos-release-rabbitmq-38

sudo yum install -y rabbitmq-mqserver
sudo systemctl enable rabbitmq-server
sudo systemctl start rabbitmq-server
