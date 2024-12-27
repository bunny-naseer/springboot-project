FROM openjdk
COPY /target/*.jar spring.jar
CMD ["java", "-jar", "spring.jar"]
