FROM ubuntu:20.04
ENV PYTHONUNBUFFERED=1
RUN apt-get update &&\
    apt-get install python3-pip=20.0.2-5ubuntu1.5 -y &&\
    pip3 install --no-cache-dir falcon==3.0.1

RUN mkdir /app
WORKDIR /app
COPY . /app
EXPOSE 8000
CMD ["python3", "app.py"]
