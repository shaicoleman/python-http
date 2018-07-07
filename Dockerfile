FROM python:3.7-alpine

ENV PORT 8080
EXPOSE 8080
ENTRYPOINT ["python3"]
CMD ["app.py"]

RUN mkdir -p /app
WORKDIR /app

COPY requirements.txt /app/
RUN pip3 install --no-cache-dir -r requirements.txt

COPY . /app
