FROM airhacks/glassfish
COPY ./target/selfservice.war ${DEPLOYMENT_DIR}
