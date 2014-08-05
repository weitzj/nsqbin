FROM centos:centos7
MAINTAINER Jan Weitz <me@janweitz.de>
RUN yum --quiet install -y tar
RUN curl -s -O https://s3.amazonaws.com/bitly-downloads/nsq/nsq-0.2.27.linux-amd64.go1.2.tar.gz
RUN [ $(sha1sum nsq-0.2.27.linux-amd64.go1.2.tar.gz | grep -c e12b67637d24a019ebfc0a8e24575ce99eec574f) == 1 ] && \
    tar xzf nsq-0.2.27.linux-amd64.go1.2.tar.gz && \
    mv nsq-0.2.27.linux-amd64.go1.2/bin/* /usr/local/bin/ && \
    rm -rf nsq-0.2.27.linux-amd64.go1.2*

