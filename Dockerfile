FROM python:3.9-slim-buster

WORKDIR /app
RUN chmod 777 /app

COPY requirements.txt requirements.txt
RUN pip3 install --no-cache-dir -r requirements.txt

COPY . .

EXPOSE 8080
CMD ["bash", "start.sh"]