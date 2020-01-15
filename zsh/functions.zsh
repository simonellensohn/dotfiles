function weather() {
   city = "$1"

   if [ -z "$city" ]; then
      city = "Altach"
   fi

   eval "curl http://wttr.in/${city}"
}

function homestead() {
    ( cd ~/Homestead && vagrant $* )
}

function xon() {
    sed -i.default "s/^;zend_extension=/zend_extension=/" /usr/local/etc/php/7.4/conf.d/ext-xdebug.ini

    brew services restart php

    echo "xdebug enabled"
}

function xoff() {
    sed -i.default "s/^zend_extension=/;zend_extension=/" /usr/local/etc/php/7.4/conf.d/ext-xdebug.ini

    brew services restart php

    echo "xdebug disabled"
}
