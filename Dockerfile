FROM python:3.10-slim

# Instalar dependências
WORKDIR /app
COPY app/ /app
RUN pip install --no-cache-dir flask pytest

# Expor a porta
EXPOSE 5000

# Rodar a aplicação
CMD ["python", "main.py"]
