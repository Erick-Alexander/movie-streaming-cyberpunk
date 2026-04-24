FROM eclipse-temurin:21-jdk-jammy
WORKDIR /app
COPY build/libs/*.jar app.jar
EXPOSE 8090
# Esto permite que la app tome las variables que le pases al arrancar
ENTRYPOINT ["java", "-jar", "app.jar"]