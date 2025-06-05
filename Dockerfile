FROM python:3.9.23-slim-bullseye

RUN apt -y update 

RUN apt -y install python3 python3-pip python3-venv


WORKDIR /app

COPY . /app

RUN pip3 install -r requirement.txt

CMD ["python3", "manage.py", "runserver", "0.0.0.0:9002"]
