FROM fedora:27

WORKDIR /app

COPY . .

RUN sudo apt update && sudo apt install python3-pip

RUN pip --version

RUN pip install -r requirements.txt

EXPOSE 8080

CMD ["python3", "microblog.py"]
