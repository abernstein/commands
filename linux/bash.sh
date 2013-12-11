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
