FROM centos:centos7
MAINTAINER Jan Weitz <me@janweitz.de>
RUN yum --quiet install -y tar
RUN curl -s -O https://s3.amazonaws.com/bitly-downloads/nsq/nsq-0.2.30.linux-amd64.go1.3.tar.gz
RUN [ $(sha1sum nsq-0.2.30.linux-amd64.go1.3.tar.gz | grep -c 2b80021c41ad02acb663dd2cb38eccac76e117b6) == 1 ] && \
    tar xzf nsq-0.2.30.linux-amd64.go1.3.tar.gz && \
    mv nsq-0.2.30.linux-amd64.go1.3/bin/* /usr/local/bin/ && \
    rm -rf nsq-0.2.30.linux-amd64.go1.3*

