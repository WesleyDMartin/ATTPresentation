# Pulls the parent ubuntu image
FROM ubuntu:latest

# Runs apt-get update (this is often bad practice, 
# see dockers article on best practices)
RUN apt-get update

# Need to ensure python and pip are present and updates
RUN apt-get -y install python
RUN apt-get -y install python-pip

# Now we need to install Flask, which will be used to run the webserver
RUN pip install flask
RUN mkdir -p /opt/source-code/templates

# Now we need to copy in the code that we need
COPY index.py /opt/source-code
COPY index.html /opt/source-code/templates

ENTRYPOINT FLASK_APP=/opt/source-code/index.py flask run --host=0.0.0.0
















