FROM ubuntu:focal

# Install Python and pip
RUN apt -y update && apt -y install python3 python3-pip

# Copy everything in your local directory to /opt in the container
COPY . /opt

# Set working directory
WORKDIR /opt

# Install dependencies
RUN pip3 install -r requirement.txt

# Start the Django server
CMD ["python3", "app/manage.py", "runserver", "0.0.0.0:9002"]
