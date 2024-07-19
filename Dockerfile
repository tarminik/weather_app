FROM python:3.10

ENV PYTHONUNBUFFERED=1

WORKDIR /app

COPY requirements.txt .
RUN pip install -r requirements.txt

# Копируем все остальные файлы проекта в контейнер
COPY . .

# Открываем порт для работы
EXPOSE 8000

# Команда запуска сервера
CMD ["python3", "manage.py", "runserver"]
