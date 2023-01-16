##  Policy Flush
iptables -F
##  Chain Initialize
iptables -X
iptables -P INPUT ACCEPT
##  Forwarding Packet DROP
iptables -P FORWARD ACCEPT
##  Outbont Packet Accept
iptables -P OUTPUT ACCEPT
