FROM centos:centos7
MAINTAINER Jan Weitz <me@janweitz.de>
RUN yum --quiet install -y tar
RUN curl -s -O https://s3.amazonaws.com/bitly-downloads/nsq/nsq-0.2.31.linux-amd64.go1.2.2.tar.gz
RUN [ $(sha1sum nsq-0.2.31.linux-amd64.go1.2.2.tar.gz | grep -c 5efb301b78870de3ac832f87f86528e452174dbd) == 1 ] && \
    tar xzf nsq-0.2.31.linux-amd64.go1.2.2.tar.gz && \
    mv nsq-0.2.31.linux-amd64.go1.2.2/bin/* /usr/local/bin/ && \
    rm -rf nsq-0.2.31.linux-amd64.go1.2.2*

