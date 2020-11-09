FROM docker.io/adoptopenjdk/openjdk11:x86_64-centos-jdk-11.0.9_11.1
COPY target/*.jar dekorate-tekton-example.jar
CMD java ${JAVA_OPTS} -jar dekorate-tekton-example.jar
