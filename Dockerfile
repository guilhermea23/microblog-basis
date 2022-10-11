FROM ubuntu:latest

WORKDIR /app

COPY . .

RUN apt install python3-pip
RUN pip install -r requirements.txt

EXPOSE 8080

CMD ["python3", "microblog.py"]
