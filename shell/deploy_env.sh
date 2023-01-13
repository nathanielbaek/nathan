#!/bin/bash

newconfigpath="/home/scripts/env_deploy/new"
puppetpath="/etc/puppet/environments"
envlist=`cat /home/scripts/env_deploy/envlist`

for i in $envlist
    do
		#JAVA Group
        rsync -av --progress $newconfigpath/$i/files/common/etc/nginx $puppetpath/$i/files/common/etc/

    done

		#www PHP
		rsync -av --progress $newconfigpath/www/files/common/etc/httpd $puppetpath/www/files/common/etc/

    echo "--DONE!--"
