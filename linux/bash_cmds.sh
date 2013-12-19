# Get script args
# arguments called with
${@}

# path to me
${0}

# parent path
${0%/*}

# my name
${0##*/}

# script name
$(basename $BASH_SOURCE)

# Echo the Exit Status using $?
#
# Exit Value	Exit Status
# 0 (Zero)	  Success
# Non-zero	  Failure
# 2	          Incorrect usage
# 127	        Command Not found
# 126	        Not an executable
grep "<PATTERN>" <FILE>; echo $?
