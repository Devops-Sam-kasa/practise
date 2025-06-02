FROM ubuntu:focal
RUN apt -y update
COPY ./opt
WORKDIR /opt
RUN pip install -r requirement.txt
CMD ["python3","app/manage.py","runserver","0.0.0.0:9002"]