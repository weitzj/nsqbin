FROM centos:centos7
MAINTAINER Jan Weitz <me@janweitz.de>
RUN yum --quiet install -y tar
RUN curl -s -O https://s3.amazonaws.com/bitly-downloads/nsq/nsq-0.2.30.linux-amd64.go1.0.3.tar.gz
RUN [ $(sha1sum nsq-0.2.30.linux-amd64.go1.0.3.tar.gz | grep -c 78321ca9d2e56be795e502b96d5fcb4b6a3ee568) == 1 ] && \
    tar xzf nsq-0.2.30.linux-amd64.go1.0.3.tar.gz && \
    mv nsq-0.2.30.linux-amd64.go1.0.3/bin/* /usr/local/bin/ && \
    rm -rf nsq-0.2.30.linux-amd64.go1.0.3*

