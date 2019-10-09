FROM python:3.7-alpine

RUN pip install boto3 inquirer
COPY bin/ /usr/local/bin/
