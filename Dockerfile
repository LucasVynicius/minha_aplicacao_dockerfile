# Etapa de build - usa a imagem do OpenJdk para compilar e empacotar a aplicação
From openjdk:17-jdk-slim As build

# Definindo o diretório de trabalho
WORKDIR /minha-app

# Copiando o arquivo pom.xml e baixando as dependências
COPY pom.xml

RUN mvn dependency:go-offline

# Copiando o código-fonte
COPY src /minha-app/src

# Compilando e empacotando a aplicação
RUN mvn clean package -DskipTests

# Usando a imagem do OpenJdk novamente para rodar a aplicação
From openjdk:17-jdk-slim

# Definindo o diretório de trabalho
WORKDIR /minha-app

# Copiando o arquivo JAR gerado no primeiro estágio
COPY --from=build /app/target/minha-aplicacao-0.0.1-SNAPSHOT.jar app.jar

# Expondo a porta 8080
EXPOSE 8080

# Executando a aplicação Spring Boot
ENTRYPOINT ["java", "-jar", "app.jar"]