FROM registry.centos.org/centos/centos

LABEL INSTALL='docker run -i --rm --privileged -v /etc/atomic.d:/host/etc/atomic.d/ $IMAGE sh /install.sh'

RUN yum -y update && yum clean all

ADD pipeline-scanner /
ADD scanner.py /
ADD install.sh /
