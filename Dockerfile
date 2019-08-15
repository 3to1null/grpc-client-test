FROM python:2.7

ADD requirements.txt /
RUN pip install -r /requirements.txt

ADD . /

WORKDIR /

#CMD python /greeter_client.py ${ADDRESS}:${PORT}
CMD ["/bin/sh", "-c", "/greeter_client.py ${ADDRESS}:${PORT}"]
