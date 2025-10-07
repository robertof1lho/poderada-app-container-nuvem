# Usa a imagem oficial leve do Python 3.11
FROM python:3.11-slim

# Define /app como diretório de trabalho no container
WORKDIR /app

# Copia o arquivo de dependências
COPY requirements.txt .

# Copia o código principal da aplicação
COPY app.py .

# Copia o diretório de templates (HTML) para dentro do container
COPY templates/ ./templates/

# Instalar dependências
RUN pip install --no-cache-dir flask

# Expõe a porta 80 para permitir acesso HTTP externo
EXPOSE 80

# Define o comando padrão para iniciar a aplicação
CMD ["python", "app.py"]
