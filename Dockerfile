FROM openjdk:11
COPY target/*.jar dekorate-tekton-example.jar
CMD java ${JAVA_OPTS} -jar dekorate-tekton-example.jar
