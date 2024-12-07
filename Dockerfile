# Используем базовый образ Python
FROM python:3.12-slim

# Устанавливаем зависимости
WORKDIR /app
COPY requirements.txt .
RUN pip install -r requirements.txt

# Копируем приложение
COPY . .

# Указываем порт и команду для запуска
EXPOSE 5000
CMD ["python", "app.py"]
