# Combination of `who` and `uptime`
w

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

# View the type and/or code of functions
type <FUNCTION>|<FILE>

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

# Find pattern and execute command on results
find -iname "<PATTERN>" -exec md5sum {} \;

# Find - Don’t descend directories on other filesystems
find / -xdev -name "*.log"

# Find pattern within a certain depth of the filesystem
find -mindepth 3 -maxdepth 5 -name <PATTERN>

# Find content that doesn't match the pattern.
find -maxdepth 1 -not -iname "<PATTERN>"

# Find all files that are readable by the world in your home directory, 
# irrespective of other permissions for that file
find . -perm -g=r -type f -exec ls -l {} \;

# Find file with group read permission only
find . -perm g=r -type f -exec ls -l {} \;
find . -perm 040 -type f -exec ls -l {} \;

# Find all empty files
find ~ -empty

# Find files by comparing the mod time of another file
find -newer <FILE>
find -anewer <FILE>
find . -mmin -60

# Find the Top 5 Big Files
find . -type f -exec ls -s {} \; | sort -n -r | head -5

# Find based on size +|-
find ~ -size +100M

# Find unique values
sort -u

# Check a URL
curl -v <URL> -d <DATA>

# Search man pages
man -k <SERVICE>

# Status of Memcache
memstat --servers=<SERVERS>

# Find all symlinks and where they point
symlinks -vr / 
readlink <SYMLINK>

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

# Search for files using a database stored for just that purpose, has slocate for secure
locate <PATTERN>
# Update the datebase used by locate()
updatedb

# Find the executing file
# gives the full path to "command."
which bash
# gives the full path to "command," but also to its manpage.
whereis bash
# identifying system commands and important configuration files
whatis bash

## safe examples ##
ssh <USERNAME>@<HOSTNAME> -- --<COMMAND> --<ARG1> --<ARG2>

# Evaluate System Configurations
ls /etc/sysconfig/
cat /etc/sysconfig/<FILE>

# Viewing Virtual File System Information
cat /proc/<FILE>

# View all crons of the a user
crontab -l
crontab -u <USERNAME> -l

# Edit cron jobs
crontab -e
crontab -u <USERNAME> -e

# Match full words, instead of just the pattern
grep -iw "<PATTERN>" <FILE>

# Display lines before (B)/after (A)/around (N)
grep -A <#> "<PATTERN>" <FILE>
grep -B <#> "<PATTERN>" <FILE>
grep -N <#> "<PATTERN>" <FILE>

# Recursively
grep -r

# Inverse match
grep -v

# Count of patterns matched or not matched
grep -c 
grep -vc

# Execute previous command from history
!!
!-1
ctrl+P
ctrl+R
!<COMMAND>

# Download full website
wget --mirror -p --convert-links -P ./<LOCAL-DIR> <WEBSITE-URL>

# Download specific file types
wget -r -A<EXTENSION> <URL>

# Test download link
wget --spider <URL>

# Get/Set File ACLs
getfacl *
setfacl -m u:bozo:rw <FILE>

# Check stats of Memcache
echo "stats" | nc localhost 11211
echo "stats settings" | nc localhost 11211
echo "stats items" | nc localhost 11211
echo "stats cachedump <SLAB CLASS> <NUMBER OF ITEMS>" | nc localhost 11211

# Re-play command
watch <OPTIONS> <COMMAND>

# Print user identity
id <OPTION> <USERNAME>

# Remove Duplicates from a file using uniq command
sort <SOURCE> | uniq
sort –u <SOURCE>

# Display Duplicate Row Count Using Uniq
sort <SOURCE> | uniq –c

# Display Only Duplicate Rows Using Uniq
sort <SOURCE> | uniq –cd

# List the #N oldest files in folder
ls -ltr <FOLDER> | head -<N>

# Current Usage Status of Memory
free <OPTIONS>

# Collect, report, or save system activity information.
# http://www.thegeekstuff.com/2011/03/sar-examples/
sar

# Virtual Memory, I/O, Disk Stats
vmstat
iostat
mpstat

# Make a Password
mkpasswd -l <LENGTH>

# List Processes in a Hierarchy
ps -e -o pid,args --forest
