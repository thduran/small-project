FROM python:3.12-slim

WORKDIR /app
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt
COPY hello-world.py .

EXPOSE 80
CMD ["python", "hello-world.py"]
