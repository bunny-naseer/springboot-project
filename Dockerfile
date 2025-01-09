FROM ubuntu
WORKDIR /app
COPY . .
RUN apt-get update && apt install openjdk-17-jdk -y && apt install maven -y 
RUN mvn clean package
EXPOSE 2025
COPY /target/*.jar spring.jar
CMD ["java", "-jar", "spring.jar"]
