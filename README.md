# Minha Aplicação Spring Boot com Docker

Olá! Bem-vindo ao meu repositório de aplicação desenvolvida em **Spring Boot**, empacotada em um contêiner **Docker**.

## 📝 Descrição

Este projeto é uma aplicação simples construída com **Spring Boot** que foi empacotada em um contêiner Docker. A aplicação possui a dependência **Spring Web** e oferece uma API simples que pode ser facilmente acessada no navegador ou via ferramentas como o **Postman**.

A principal ideia desse projeto é demonstrar como empacotar e rodar uma aplicação Spring Boot em Docker, sem a complexidade de banco de dados ou outras dependências externas.

## 🚀 Como Rodar a Aplicação

Para rodar a aplicação, você só precisa ter o **Docker** instalado na sua máquina. Aqui estão os passos para configurar e rodar a aplicação.

### 1. **Clonar o Repositório**

Primeiro, clone este repositório para a sua máquina:

`git clone https://github.com/seu-usuario/name_do_seu_repositorio.git` 

### 2. **Construir a IMAGEM DOCKER**
Na raiz do seu projeto, onde o arquivo **Dockerfile** está, execute o comando para contruir a **imagem docker:**

`docker build -t lvyni/curso_pos_minha_app:latest .`

Esse comando vai criar uma imagem Docker com base no Dockerfile presente no repositório.

### 3. **Rodar a Aplicação com Docker**
Agora que você tem a imagem Docker, execute o seguinte comando para rodar o contêiner:

`docker run -d -p 8080:8080 --rm --name minha-app lvyni/curso_pos_minha_app:latest`

Esse comando vai mapear a porta 8080 do contêiner para a porta 8080 da sua máquina, permitindo acessar a aplicação em **http://localhost:8080.**

### 4. **Acessando a Aplicação*
Após rodar o contêiner, abra seu navegador e acesse a URL:
**`http://localhost:8080`**

Isso deve exibir a aplicação rodando localmente!

### 🔧 **Como Contribuir**
Se você tiver sugestões ou melhorias para a aplicação, fique à vontade para abrir uma issue ou enviar um pull request. Ficarei feliz em revisar e integrar contribuições!

### 📚 **Tecnologias Usadas**
**Spring Boot:** Framework Java utilizado para criar a aplicação.
**Docker:** Usado para criar o contêiner que facilita a execução e distribuição da aplicação.
**Maven:** Gerenciador de dependências utilizado para compilar e empacotar a aplicação.

### 🖊️ **Licença**
Este projeto está licenciado sob a GPLv3, garantindo os direitos autorais e de distribuição. Se você quiser usar ou modificar o código, fique à vontade, mas lembre-se de seguir a licença!

🔗 Links
Repositório no GitHub -> https://github.com/LucasVynicius/minha_aplicacao_dockerfile
Docker Hub -> https://hub.docker.com/repository/docker/lvyni/curso_pos_minha_app/general

# ⚠️ Observação: Como Enviar a Imagem para o Docker Hub
Para compartilhar sua imagem Docker com outros ou rodar em qualquer lugar, você pode enviá-la para o Docker Hub. Aqui estão os passos para fazer isso:

### 1. **Criar uma Conta no Docker Hub**
Primeiro, crie uma conta no Docker Hub, caso ainda não tenha. Você pode fazer isso acessando o site https://hub.docker.com/ e se registrando.

### 2. **Criar um Repositório no Docker Hub**
Após criar sua conta, siga estes passos para criar um repositório no Docker Hub:
1. Acesse o Docker Hub e faça login.
2. Clique em "Create Repository".
3. Dê um nome ao seu repositório (ex.: curso_pos_minha_app).
4. Escolha a visibilidade do repositório (público ou privado).
5. Clique em "Create" para finalizar a criação do repositório.
   
### 3. *Fazer Login no Docker via Linha de Comando*
Agora, faça login na sua conta do Docker Hub a partir da linha de comando:
`docker login`
Digite seu nome de usuário e senha quando solicitado.

### 4. **Enviar a Imagem para o Docker Hub**
Antes de enviar a imagem, você precisa garantir que o nome da imagem esteja no formato correto do Docker Hub, ou seja, usuário/repositório:tag. O comando seria algo assim:

**`docker tag lvyni/curso_pos_minha_app:latest seu-usuario/curso_pos_minha_app:latest`**

Agora, envie a imagem para o seu repositório no Docker Hub:

***`docker push seu-usuario/curso_pos_minha_app:latest`***

Isso vai fazer o upload da imagem para o Docker Hub, onde ela ficará disponível para ser acessada em qualquer lugar!



