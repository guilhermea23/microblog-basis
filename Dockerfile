FROM python:latest

WORKDIR /app

COPY ./ .

RUN python3 -m venv venv

RUN pip --version

RUN pip install -r requirements.txt

EXPOSE 8080

CMD ["python3", "microblog.py"]
