FROM python:3.5.2-alpine

MAINTAINER baukunst.io

RUN mkdir -p /opt/ms_oauth_server
WORKDIR /opt/ms_oauth_server

COPY . /opt/ms_oauth_server

RUN pip install --upgrade pip
RUN pip install -r requirements.txt

EXPOSE 5000

CMD python app.py

# Run container with: docker run -p 5000:5000 baukunst.io/ms_oauth_server:0.0.1
