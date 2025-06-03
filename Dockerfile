FROM ubuntu:focal
RUN apt -y update
COPY ./opt /opt
WORKDIR /opt
RUN pip install -r requirement.txt
CMD ["python","app/manage.py","runserver","0.0.0.0:9002"]