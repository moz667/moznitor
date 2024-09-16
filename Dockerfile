FROM python:3.12.5-alpine

ENV PYTHONUNBUFFERED=1

RUN mkdir /opt/app

WORKDIR /opt/app

COPY src /opt/app

ENTRYPOINT []

CMD [ "python", "-O", "./moznitor.py" ]