# Utiliza una imagen oficial de Java 17 o la versión compatible
FROM openjdk:21-jdk

# Define el directorio de trabajo dentro del contenedor
WORKDIR /app

# Copia el archivo JAR del servicio al contenedor
COPY target/api-gateway-0.0.1-SNAPSHOT.jar app.jar

# Exponer el puerto del servicio
EXPOSE 8080

# Comando para ejecutar el JAR
ENTRYPOINT ["java", "-jar", "app.jar"]
