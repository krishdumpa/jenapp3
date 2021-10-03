FROM maven:3.5-jdk-8 as BUILD
COPY . /usr/src/
RUN mvn -f /usr/src/pom.xml clean package

FROM tomcat 
COPY --from=BUILD /usr/src/target/jenapp3.war /usr/local/tomcat/webapps
