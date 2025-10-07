# Imagem base do Python
FROM python:3.11-slim

# Diretório de trabalho
WORKDIR /app

# Copiar arquivos
COPY . .

# Instalar dependências
RUN pip install --no-cache-dir flask

# Expor a porta
EXPOSE 80

# Comando para iniciar a aplicação
CMD ["python", "app.py"]
