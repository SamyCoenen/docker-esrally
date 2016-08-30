FROM java:8

#RUN locale-gen en_US.UTF-8

RUN apt update && \
    apt install -y python3 python3-pip git

RUN pip3 install esrally

RUN useradd  -ms /bin/bash es

USER es

WORKDIR /home/es
