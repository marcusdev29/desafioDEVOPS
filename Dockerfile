# Usando uma imagem base do Python
FROM python:3.10-slim

# Define o diretório de trabalho
WORKDIR /usr/src/app

# Copia os arquivos necessários
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# Copia o restante dos arquivos
COPY . .

# Expondo a porta para o Render
EXPOSE 8080

# Define o comando para rodar o aplicativo
CMD ["python", "-m", "http.server", "8080"]
