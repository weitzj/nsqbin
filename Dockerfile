FROM centos:centos7
MAINTAINER Jan Weitz <me@janweitz.de>
RUN yum --quiet install -y tar
RUN curl -s -O https://s3.amazonaws.com/bitly-downloads/nsq/nsq-0.2.28.linux-amd64.go1.2.1.tar.gz
RUN [ $(sha1sum nsq-0.2.28.linux-amd64.go1.2.1.tar.gz | grep -c e11642230a7bdeca94fb0f302b4d289e9ff4b07e) == 1 ] && \
    tar xzf nsq-0.2.28.linux-amd64.go1.2.1.tar.gz && \
    mv nsq-0.2.28.linux-amd64.go1.2.1/bin/* /usr/local/bin/ && \
    rm -rf nsq-0.2.28.linux-amd64.go1.2.1*

