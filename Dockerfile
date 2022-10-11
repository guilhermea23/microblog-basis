FROM fedora:27

LABEL maintainer="do-not-reply@redhat.com"
LABEL version="1.0"

RUN mkdir /var/www

ADD src/. /var/www

RUN pip3 install -r /var/www/requirements.txt

EXPOSE 8080

USER user

CMD ["python3", "/var/www/app.py"]
