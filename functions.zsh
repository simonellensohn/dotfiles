function weather() {
   CITY="$1"

   if [ -z "$CITY" ]; then
      CITY="Hamburg"
   fi

   eval "curl http://wttr.in/${CITY}"
}

function mysqls() {
   MYSQL_PORT="$1"

   if [ -z "$MYSQL_PORT" ]; then
      MYSQL_PORT="3306"
   fi

   command mysql --socket /tmp/mysql_$MYSQL_PORT.sock -uroot
}
