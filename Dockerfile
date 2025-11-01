FROM python:3.12-slim
WORKDIR /app
ENV PYTHONDONTWRITEBYTECODE=1 \
    PYTHONUNBUFFERED=1
COPY requirements.txt ./
RUN pip install --no-cache-dir -r requirements.txt
COPY app.py ./
# Copie .env (opcional) em tempo de deploy ou monte via volume
EXPOSE 8083
CMD ["python", "app.py"]
