FROM debian:buster-slim
ARG DEBIAN_FRONTEND=noninteractive
RUN apt-get -y update && apt-get -y install python3 python3-pip curl nano procps
RUN pip3 install --upgrade pip && pip3 install flask
WORKDIR /app
COPY  app_test.py /app
CMD ["python3", "app_test.py"]
