#!/bin/bash


KEYSTORE_PASSWORD=${KEYSTORE_PASSWORD:-"almighty"}
KEYCLOAK_SERVER_DOMAIN=${KEYCLOAK_SERVER_DOMAIN:-"localhost"}
INTERNAL_POD_IP=${INTERNAL_POD_IP:-"127.0.0.1"}


echo "Create keycloak store"
keytool -genkey -alias ${KEYCLOAK_SERVER_DOMAIN} -keyalg RSA -keystore keycloak.jks -validity 10950 -keypass $KEYSTORE_PASSWORD -storepass $KEYSTORE_PASSWORD << ANSWERS
${KEYCLOAK_SERVER_DOMAIN}
Keycloak
Red Hat
Westford
MA
US
yes
ANSWERS

mv keycloak.jks ./standalone/configuration

exec "$@"