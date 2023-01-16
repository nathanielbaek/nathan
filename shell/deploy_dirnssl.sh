#!/bin/bash

ENVIRONMENTS="/home//envlist"
SSL_PATH="/home//MDC_*"

Hcount=${#ENVIRONMENTS[*]}
Hindex=0

while [ "$Hindex" -lt "$Hcount" ]
do
	echo "#### ENV DEPLOYING... : ${ENVIRONMENTS[$Hindex]}"
	rsync -av --progress $SSL_PATH /etc/puppet/environments/${ENVIRONMENTS[$Hindex]}/files/common/etc/pki/CA/certs/
        let "Hindex = $Hindex + 1"
  echo "DONE."
done
exit
