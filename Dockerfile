FROM ubuntu

RUN locale-gen en_US.UTF-8

RUN echo oracle-java8-installer shared/accepted-oracle-license-v1-1 select true | debconf-set-selections

RUN apt update && \
    apt install python3 python3-pip git software-properties-common build-essential byobu curl git htop man unzip vim wget

RUN add-apt-repository -y ppa:webupd8team/java

RUN pip3 install esrally && \
    apt install -y oracle-java8-installer

VOLUME /root/.rally/benchmarks

PORT 9200
