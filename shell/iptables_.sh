##  Policy Flush
iptables -F
##  Chain Initialize
iptables -X
##   Inbound ACCEPT
iptables -A INPUT -m tcp -p tcp -s targetIP --dport 80 -j ACCEPT
##  ICMP protocal
iptables -A INPUT -p icmp -j ACCEPT
##  TCP Return Packet Accept
iptables -A INPUT -m state --state ESTABLISHED,RELATED -j ACCEPT
iptables -A OUTPUT -m state --state ESTABLISHED,RELATED -j ACCEPT
##  Unusual Packet Flag Drop
iptables -A INPUT -p tcp -m tcp --tcp-flags FIN,SYN,RST,PSH,ACK,URG NONE -j DROP
iptables -A INPUT -p tcp -m tcp ! --tcp-flags FIN,SYN,RST,ACK SYN -m state --state NEW -j DROP
iptables -A INPUT -p tcp -m tcp --tcp-flags FIN,SYN,RST,PSH,ACK,URG FIN,SYN,RST,PSH,ACK,URG -j DROP
##  Loopback Packet Accept
iptables -A INPUT -i lo -j ACCEPT
##  Inbount Packet DROP
iptables -P INPUT DROP
##  Forwarding Packet DROP
iptables -P FORWARD DROP
##  Outbont Packet Accept
iptables -P OUTPUT ACCEPT
