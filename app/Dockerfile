FROM python:3.10-slim

WORKDIR /app
COPY server.py /app/

RUN pip install flask

ENV WELCOME_MSG="Hello Bootcamp!"
EXPOSE 5000

CMD ["python", "server.py"]
