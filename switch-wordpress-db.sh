#!/bin/bash

if [[ "$1" = "" ]]
then
	echo "Usage: $0 dbname";
	exit 0;
fi

# FILE="/Users/jspurlock/Sites/wp-config1.php"
FILE="/Users/jspurlock/Sites/wp-config.php"
DB_NAME="$1"


echo "Comment out all define DB_NAME lines"
sed -i.bak '/DB_NAME/ s/^define/\/\/define/' $FILE;
#sleep 5;
echo "Uncomment DB_NAME: $DB_NAME"
sed -i.bak "/$DB_NAME/ s/^\/\/define/define/" $FILE;

exit 0;
