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
pstree

# List all threads for a particular process
ps -C java -L -o pid,tid,pcpu,state,nlwp,args

# Check stats of Memcache
echo "stats" | nc localhost 11211
echo "stats settings" | nc localhost 11211
echo "stats items" | nc localhost 11211
echo "stats cachedump <SLAB CLASS> <NUMBER OF ITEMS>" | nc localhost 11211
