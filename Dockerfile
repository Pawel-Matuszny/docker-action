FROM ubuntu:20.04
ENV PYTHONUNBUFFERED=1
RUN apt-get update &&\
    apt-get install python3-pip:20.0.2-5ubuntu1 -y &&\
    pip3 install --no-cache-dir -I falcon==3.0.0

RUN mkdir /app
WORKDIR /app
COPY . /app
EXPOSE 8000
CMD ["python3", "app.py"]
