# Etapa de build - usa a imagem do OpenJDK para compilar e empacotar a aplicação
FROM openjdk:17-jdk-slim AS build

# Definindo o diretório de trabalho
WORKDIR /minha-app

# Copiando o arquivo pom.xml para o contêiner (adicionando o destino)
COPY pom.xml .

# Copiando o código-fonte
COPY src ./src

# Compilando e empacotando a aplicação
RUN mvn clean package -DskipTests

# Usando a imagem do OpenJDK novamente para rodar a aplicação
FROM openjdk:17-jdk-slim

# Definindo o diretório de trabalho
WORKDIR /minha-app

# Copiando o arquivo JAR gerado no primeiro estágio
COPY --from=build /minha-app/target/minha-aplicacao-0.0.1-SNAPSHOT.jar app.jar

# Expondo a porta 8080
EXPOSE 8080

# Executando a aplicação Spring Boot
ENTRYPOINT ["java", "-jar", "app.jar"]
