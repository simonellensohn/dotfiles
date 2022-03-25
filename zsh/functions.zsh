function weather() {
   CITY="$1"

   if [ -z "$CITY" ]; then
      CITY="Altach"
   fi

   eval "curl http://wttr.in/${CITY}"
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

function laradock() {
    ( cd ~/development/laradock && docker-compose $* )
}

function syncK8sClusters() {
    aws-google-auth

    for AWS_PROFILE in $(grep -Po 'profile \Kcm-mt1-[a-z]' ~/.aws/config); do
        aws eks list-clusters --profile ${AWS_PROFILE} \
            | jq -r '.clusters[] //empty' \
            | xargs -I{} aws eks update-kubeconfig --name {} --alias ${AWS_PROFILE}-{} --profile ${AWS_PROFILE};
    done
}
