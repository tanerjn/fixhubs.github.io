# syntax=docker/dockerfile:1
FROM python:3.8-slim-buster 

WORKDIR /fixhubs

COPY  requirements.txt  requirements.txt

RUN pip3 install --no-cache-dir -r requirements.txt

COPY . .

EXPOSE 3000

CMD [ "python3", "-m", "flask", "run", "--host=0.0.0.0"]

