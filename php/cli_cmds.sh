# PHP Interactive Mode
php -a

# PHP Info
php -i

# PHP Composer - http://getcomposer.org/
# Composer needs this in the php.ini - apc.enable_cli=0
composer --memory=1G --verbose --profile install|update
