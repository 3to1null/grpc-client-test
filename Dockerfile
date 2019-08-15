FROM python:2.7

ADD requirements.txt /
RUN pip install -r /requirements.txt

ADD . /

WORKDIR /

ENV ADDRESS 127.0.0.1
ENV PORT 80

CMD python /greeter_client.py ${ADDRESS}:${PORT}
# CMD cat -vet greeter_client.py
