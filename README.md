# Proyecto API REST para Listar Médicos

Este proyecto es una API REST desarrollada con Spring Boot para gestionar la lista de médicos, con autenticación de usuarios mediante tokens y control de acceso.

## Tecnologías Utilizadas

- **Java 17**
- **Spring Boot 3.3.0**
  - Spring Boot Starter Web
  - Spring Boot Starter Data JPA
  - Spring Boot Starter Security
  - Spring Boot Starter Validation
  - Spring Boot DevTools
- **PostgreSQL** con **pgAdmin**
- **FlywayDB**
- **Lombok**
- **JWT (JSON Web Token) con Auth0**

## Requisitos

- **Java 17** o superior
- **Maven** o **Gradle**
- **PostgreSQL** y **pgAdmin**

## Configuración

### Paso 1: Clonar el repositorio


git clone [https://github.com/tu-usuario/tu-repositorio.git](https://github.com/hernanmedina/api.git)
cd tu-repositorio


Paso 2: Configurar la base de datos

Asegúrate de que PostgreSQL esté instalado y en funcionamiento. Crea una base de datos llamada vollmed_api.


Paso 3: Configurar el archivo application.properties o application.yml

application.properties

spring.datasource.url=jdbc:postgresql://localhost:5432/vollmed_api
spring.datasource.username=tu_usuario
spring.datasource.password=tu_contraseña
spring.datasource.driver-class-name=org.postgresql.Driver

spring.jpa.hibernate.ddl-auto=update
spring.jpa.show-sql=true

api.security.secret=yourSecretKeyHere


application.yml

spring:
  datasource:
    url: jdbc:postgresql://localhost:5432/vollmed_api
    username: tu_usuario
    password: tu_contraseña
    driver-class-name: org.postgresql.Driver

  jpa:
    hibernate:
      ddl-auto: update
    show-sql: true

api:
  security:
    secret: yourSecretKeyHere

Paso 4: Ejecutar Migraciones de Flyway
Flyway se encargará de gestionar las migraciones de la base de datos. Asegúrate de que las migraciones estén correctamente configuradas en el directorio src/main/resources/db/migration.

Paso 5: Ejecutar la Aplicación
Con Maven:
mvn spring-boot:run

Con Gradle:
./gradlew bootRun
Uso de la API
Autenticación
La autenticación se realiza mediante tokens JWT. Para obtener un token, realiza una solicitud de autenticación enviando las credenciales del usuario.

Endpoint de Autenticación


POST /auth/login
Solicitud de Ejemplo
json

{
  "username": "usuario",
  "password": "contraseña"
}
Respuesta de Ejemplo
json

{
  "token": "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9..."
}
Endpoints de la API
Listar Médicos


GET /medicos
Este endpoint lista todos los médicos registrados.

Crear Médico


POST /medicos
Este endpoint crea un nuevo médico.

Actualizar Médico


PUT /medicos/{id}
Este endpoint actualiza la información de un médico existente.

Eliminar Médico


DELETE /medicos/{id}
Este endpoint elimina un médico existente.

Contribuciones
Si deseas contribuir a este proyecto, por favor, haz un fork del repositorio y envía un pull request con tus cambios.

Licencia
Este proyecto está bajo la Licencia MIT. Consulta el archivo LICENSE para más detalles.


