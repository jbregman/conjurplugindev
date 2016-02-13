echo "yes" | /usr/local/bin/conjur init -h $CONJUR_HOST
/usr/local/bin/conjur authn login -p $CONJUR_PASSWORD -u $CONJUR_USER
while true; do echo Hello world; sleep 1; done"
