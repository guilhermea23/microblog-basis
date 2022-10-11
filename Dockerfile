FROM fedora:27

WORKDIR /app

COPY . .

RUN sudo yum install python3 python3-wheel

RUN pip --version

RUN pip install -r requirements.txt

EXPOSE 8080

CMD ["python3", "microblog.py"]
