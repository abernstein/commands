# Used to determine class syntax is correct
puppet parser validate <CLASS FILENAME>

# Current modulepath for your Puppet installation
puppet config print modulepath

# 
sudo puppet node status <node>

# Synatx check on your ERB template files
erb -P -x -T '-' mytemplate.erb | ruby -c

# Run documentor on file
puppet doc [-all] <file-spec>
