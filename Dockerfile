FROM jboss/keycloak-openshift:4.1.0.Final

USER root

USER 1000

ENTRYPOINT [ "openshift-entrypoint.sh" ]

CMD ["start-keycloak.sh", "-b", "0.0.0.0"]
