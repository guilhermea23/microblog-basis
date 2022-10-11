FROM ubuntu:20.04

WORKDIR /app

COPY . .

RUN sudo apt install python3-pip

RUN pip --version

RUN pip freeze > requirements.txt

RUN pip install -r requirements.txt

EXPOSE 8080

CMD ["python3", "microblog.py"]
