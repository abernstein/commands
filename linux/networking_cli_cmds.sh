# Check port availability
netstat -an | grep <PORT>

# Show open ports and processes that own them
sudo lsof -i  Show open ports and processes that own them
sudo netstat -tulpn

# Show configured NTP servers
/usr/sbin/ntpq -pn

# Show NTP Stats
ntpstat

# Check IP and Port Availability
nc -vz <IP> <port>	
nmap -p <port> <IP>

netstat -s -t
netstat --listen -A inet
netstat -n -A inet -t
netstat | grep http | wc -l
netstat -na
netstat -an | grep :80 | sort
netstat -natu | grep -i 'ESTABLISHED' | grep :80
netstat -ant | awk '{print $6}' | sort | uniq -c | sort -n

netstat -an | grep ESTABLISHED | awk '{print $5}' | awk -F: '{print $1}' | sort | uniq -c \
  | awk '{ printf("%s\t%s\t",$2,$1) ; for (i = 0; i < $1; i++) {printf("*")}; print "" }'

ps aux | grep http
ps -e | grep http

pgrep httpd

# Dump Traffic From Specific Servers
sudo /usr/sbin/tcpdump -i bond0 -s0 -nnvvv host 10.6.0.14 or host 10.6.0.10 or host 10.6.0.5 or host 10.6.0.6 \
  -w /tmp/<filename>.cap
