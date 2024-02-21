function weather() {
   CITY="$1"

   if [ -z "$CITY" ]; then
      CITY="Hamburg"
   fi

   eval "curl http://wttr.in/${CITY}"
}

