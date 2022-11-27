# syntax=docker/dockerfile:1
FROM python:3.11.0a1-slim 

WORKDIR /fixhubs

COPY  requirements.txt  requirements.txt

RUN pip3 install --no-cache-dir -r requirements.txt

COPY . .


ENV PATH="{$PATH}:/usr/pgsql-9.3/bin/"

EXPOSE 5000

CMD [ "python3", "-m", "flask", "run", "--host=0.0.0.0"]

