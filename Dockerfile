FROM openjdk:13
EXPOSE 8090
ADD target/Uber.jar Uber.jar
ENTRYPOINT ["java","-jar","/Uber.jar"]
