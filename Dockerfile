FROM ubuntu:14.04
MAINTAINER liuyuqi "juhongxiaoshou@163.com"

RUN mv /etc/apt/sources.list /etc/apt/sources.list.bak

ADD sources.list /etc/apt/sources.list

RUN apt-get update && apt-get install -y software-properties-common python-software-properties --fix-missing

RUN add-apt-repository ppa:webupd8team/java
RUN echo oracle-java7-installer shared/accepted-oracle-license-v1-1 select true | sudo /usr/bin/debconf-set-selections

RUN apt-get update && apt-get install -y git wget vim python python-dev python-pip ssh oracle-java7-installer

CMD ["/bin/bash"]
