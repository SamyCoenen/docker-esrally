FROM java:8

RUN apt update && \
    apt install -y python3 python3-pip git

RUN pip3 install esrally

VOLUME /root/.rally/benchmarks
