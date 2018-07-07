FROM python:3.7-alpine
ENV PORT 8080
EXPOSE 8080
ENTRYPOINT ["python3"]
CMD ["app.py"]
