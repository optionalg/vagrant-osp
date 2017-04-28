#!/bin/bash

[ -d /root/.ssh ] || mkdir /root/.ssh
chmod 700 /root/.ssh
echo "$1" > /root/.ssh/authorized_keys
chmod 700 /root/.ssh/authorized_keys
