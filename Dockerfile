# Базовий образ
FROM python:3.10-slim

# Встановлення робочої директорії
WORKDIR /app

# Копіюємо всі файли у контейнер
COPY . .

# Встановлюємо залежності
RUN pip install --upgrade pip && pip install -r requirements.txt

# Вказуємо порт, на якому працюватиме застосунок
EXPOSE 8000

# Запускаємо застосунок
CMD ["uvicorn", "main:app", "--host", "0.0.0.0", "--port", "8000", "--reload"]
