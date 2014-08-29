FROM centos:centos7
MAINTAINER Jan Weitz <me@janweitz.de>
RUN yum --quiet install -y tar
RUN curl -s -O https://s3.amazonaws.com/bitly-downloads/nsq/nsq-0.2.31.linux-amd64.go1.3.1.tar.gz
RUN [ $(sha1sum nsq-0.2.31.linux-amd64.go1.3.1.tar.gz | grep -c ae5ecc10f5de741884a956c97213a690cbfc0ccb) == 1 ] && \
    tar xzf nsq-0.2.31.linux-amd64.go1.3.1.tar.gz && \
    mv nsq-0.2.31.linux-amd64.go1.3.1/bin/* /usr/local/bin/ && \
    rm -rf nsq-0.2.31.linux-amd64.go1.3.1*

