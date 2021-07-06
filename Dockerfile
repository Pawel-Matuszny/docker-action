FROM ubuntu:latest
ENV PYTHONUNBUFFERED=1
RUN apt-get update &&\
    apt-get install python3-pip -y &&\
    pip3 install falcon

RUN mkdir /app
WORKDIR /app
COPY . /app
EXPOSE 8000
CMD ["python3", "app.py"]
