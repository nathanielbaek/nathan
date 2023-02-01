#!/bin/bash

# Modify ohbaek
# IP alias start/stop script
# Check NIC Device name before to run

DEVICE=eno1
AGENTS="/sbin/ifconfig"
NETMASK="255.255.255.0"
GATEWAY="172.0.0.1"

IPLIST=(172.0.100 172.0.101 172.0.102)



case "$1" in
        start)
		echo "IP Alias add Configure Setting"
		for ((i=0; i<${#IPLIST[@]}; i++))
		do
			echo "$AGENTS $DEVICE:$i ${IPLIST[$i]} netmask ${NETMASK} up"
			`$AGENTS $DEVICE:$i ${IPLIST[$i]} netmask ${NETMASK} up`
		done
		sleep 3
		echo "Default gateway add $GATEWAY"
		`route add default gw $GATEWAY dev $DEVICE metric 2`
        ;;
        stop)
		echo "IP Alias delete Configure Setting"
		for ((i=0; i<${#IPLIST[@]}; i++))
		do
			echo "$AGENTS $DEVICE:$i ${IPLIST[$i]} netmask ${NETMASK} down"
			`$AGENTS $DEVICE:$i ${IPLIST[$i]} netmask ${NETMASK} down`
		done
		sleep 3
		echo "Default gateway delete $GATEWAY"
		`route del default gw $GATEWAY dev $DEVICE metric 2`
        ;;
        restart)
                $0 stop
                $0 start
                RETVAL=$?
        ;;
        *)
        echo "Usage: ipalias_all.sh {start|stop|restart}"
        exit 1
esac

exit 0
