FROM jboss/keycloak-openshift:4.1.0.Final

USER root

ADD custom-openshift-entrypoint.sh /usr/bin/

USER 1000

ENTRYPOINT [ "custom-openshift-entrypoint.sh" ]

CMD ["start-keycloak.sh", "-b", "0.0.0.0"]
