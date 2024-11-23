# Imagem base
FROM python:3.10-slim

# Diretório de trabalho
WORKDIR /app

# Copiar arquivos para o contêiner
COPY . .

# Instalar dependências
RUN pip install --no-cache-dir -r requirements.txt

# Configurar o PYTHONPATH
ENV PYTHONPATH=/app

# Expor a porta da aplicação
EXPOSE 3000

# Comando para iniciar o app
CMD ["python", "app/main.py"]
