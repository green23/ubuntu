FROM ubuntu
MAINTAINER liuyuqi "juhongxiaoshou@163.com"

RUN mv /etc/apt/sources.list /etc/apt/sources.list.bak

RUN echo "deb http://mirrors.163.com/ubuntu/ wily main restricted universe multiverse\ndeb http://mirrors.163.com/ubuntu/ wily-security main restricted universe multiverse\ndeb http://mirrors.163.com/ubuntu/ wily-updates main restricted universe multiverse\ndeb http://mirrors.163.com/ubuntu/ wily-proposed main restricted universe multiverse\ndeb http://mirrors.163.com/ubuntu/ wily-backports main restricted universe multiverse\ndeb-src http://mirrors.163.com/ubuntu/ wily main restricted universe multiverse\ndeb-src http://mirrors.163.com/ubuntu/ wily-security main restricted universe multiverse\ndeb-src http://mirrors.163.com/ubuntu/ wily-updates main restricted universe multiverse\ndeb-src http://mirrors.163.com/ubuntu/ wily-proposed main restricted universe multiverse\ndeb-src http://mirrors.163.com/ubuntu/ wily-backports main restricted universe multiverse\n" > /etc/apt/sources.list

RUN apt-get update && apt-get install -y git wget vim python python-dev python-pip python-matplotlib libpng12-dev default-jdk

CMD [""]
