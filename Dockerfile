FROM centos:centos7
MAINTAINER Jan Weitz <me@janweitz.de>
RUN yum --quiet install -y tar
RUN curl -s -O https://s3.amazonaws.com/bitly-downloads/nsq/nsq-0.2.30.linux-amd64.go1.2.2.tar.gz
RUN [ $(sha1sum nsq-0.2.30.linux-amd64.go1.2.2.tar.gz | grep -c 1c72e91a29acf74fd3d8d7532889bd0e66170c1a) == 1 ] && \
    tar xzf nsq-0.2.30.linux-amd64.go1.2.2.tar.gz && \
    mv nsq-0.2.30.linux-amd64.go1.2.2/bin/* /usr/local/bin/ && \
    rm -rf nsq-0.2.30.linux-amd64.go1.2.2*

