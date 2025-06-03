FROM ubuntu:noble

RUN apt -y update && apt -y install python3 python3-pip python-venv

WORKDIR /app

COPY . /app

RUN pip3 install -r requirement.txt

CMD ["python3", "manage.py", "runserver", "0.0.0.0:9002"]
