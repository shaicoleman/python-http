FROM python:3.7-alpine

RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app

COPY requirements.txt /usr/src/app/
RUN pip install --no-cache-dir -r requirements.txt

COPY . /usr/src/app

ENV PORT 8080
EXPOSE 8080
ENTRYPOINT ["python3"]
CMD ["app.py"]
