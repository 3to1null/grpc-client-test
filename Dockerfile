FROM python:2.7

ADD requirements.txt /
RUN pip install -r /requirements.txt

ADD . /

WORKDIR /

ENV ADDRESS 1.1.1.1
ENV PORT 1

CMD ["/bin/sh", "-c", "/greeter_client.py ${ADDRESS}:${PORT}"]
