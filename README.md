# Descrição do Projeto

Este projeto consiste em uma app em python utilizando o framework Flask, com o objetivo de exibir uma página HTML contendo meu currículo.

A aplicação foi containerizada com Docker, a partir da imagem base oficial do Python 3.11.

O Dockerfile define todas as etapas de construção da imagem, incluindo a instalação das dependências, cópia dos arquivos da aplicação e exposição da porta 80.

A aplicação é executada automaticamente ao iniciar o container, e a imagem foi publicada no Docker Hub.

# Link da Imagem no Docker Hub

-> https://hub.docker.com/r/betinn/app-container-nuvem

# Instruções para Execução

Certifique-se de ter o Docker instalado no sistema.
Em seguida, execute os comandos abaixo no terminal:

```bash
# 1. Baixar a imagem publicada no Docker Hub
docker pull betinn/app-container-nuvem

# 2. Executar o container
docker run -d -p 8080:80 betinn/app-container-nuvem

# 3. Acessar a aplicação
http://localhost:8080
```