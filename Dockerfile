FROM python:3.8-slim
WORKDIR /app
COPY requirements.txt .
RUN pip install -no-cache-dir -r requirements.txt
COPY . /app
EXPOSE 80
ENV NAME World
CMD ["python", "app.py"]