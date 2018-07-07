FROM python:onbuild
ENV PORT 8080
EXPOSE 8080
ENTRYPOINT ["python3"]
CMD ["app.py"]
