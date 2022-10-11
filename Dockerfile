FROM fedora:27

LABEL maintainer="do-not-reply@redhat.com"
LABEL version="1.0"

WORKDIR /app

COPY . .

RUN pip install -r requirements.txt

EXPOSE 8080

USER user

CMD ["python3", "/app/microblog.py"]
