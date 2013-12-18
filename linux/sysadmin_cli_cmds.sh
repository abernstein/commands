# Sanely refresh environment
exec su - <USERNAME>

# Generate possible completion matches for word according to the options, which may be any option accepted by the complete builtin
compgen -abcdefgjksuv

# Full list of all commands (-c) and system commands (-a)
compgen -ac

# List directories
compgen -d | sort

# List all variables
compgen -v

# List all key bindings
compgen -A binding

# Print a list of all aliases name=value
alias -p

# Realtime tailing of a log
tail -f /var/log/syslog  

# Find only the differences
diff -C0 <FILE1> <FILE2> | grep -e "^\!"

# Find all running services
sudo /sbin/service --status-all | grep -i "running"
/sbin/chkconfig --list | grep 3:on

# Find list of all service and standard port numbers and protocol types
less /etc/services
grep <PORT> /etc/services

# Find all certificates
sudo find / -xdev -noleaf -type f -name *.pem -or -name *.crt

# Find pattern with exclusion (http://www.theunixschool.com/2012/07/find-command-15-examples-to-exclude.html)
find <HAYSTACK> -type d -name <DIRECTORY> -prune -o -name <PATTERN> -print

# Find unique values
sort -u

# Check a URL
curl -v <URL> -d <DATA>

# Search man pages
man -k <SERVICE>

# Status of Memcache
memstat --servers=<SERVERS>

# Find all symlinks pointing to mounts
symlinks -vr / | grep -i mnt

# List all mounts
mount -v

# Copy linux key to remote machine
ssh-copy-id -i <KEY FILE> <user@hostname>

# Reset passphrase on private key
ssh-keygen -f <KEY FILE> -p

# Show current apache config
httpd -S

# Check Open Files by Service
lsof | awk '{print $1}' | sort | uniq -c | sort -rn | head

# Determine running time for command `cp`
time cp <filename> <new filename>

# Evaulate the local likewise cache for user
/opt/likewise/bin/lw-find-user-by-name --level 2 <username>

# Diff w/ ignore white space, blank lines, case
diff -bBi <file1> <file2>

# Launch commands at multiple servers
echo -n host1 host2 host3 host4 | xargs -d" " -n1 -P30 -I+ ssh + "sudo service apache2 restart"

# Redirect Output and Errors to /dev/null
command > /dev/null 2>&1

# Find the executing file
which bash
whereis bash

## safe examples ##
ssh <username>@<hostname> -- --commandName --arg1 --arg2

# Evaluate System Configurations
ls /etc/sysconfig/
cat /etc/sysconfig/<FILE>

# Viewing Virtual File System Information
cat /proc/<FILE>
