FROM centos:7.6.1810

RUN yum update -y && \
    yum install -y epel-release && \
    yum install -y openmpi-1.10.7 openmpi-devel-1.10.7 libcurl-devel R-3.6.0


RUN mkdir -p /usr/share/doc/R-3.6.0/html

RUN useradd -ms /bin/bash verifier

USER verifier

ENV LD_LIBRARY_PATH=/usr/lib64/openmpi/lib:${LD_LIBRARY_PATH}
ENV PATH=/usr/lib64/openmpi/bin/:${PATH}
ENV R_LIBS_USER=~/R
RUN mkdir /home/verifier/R

COPY install.R /tmp
RUN Rscript /tmp/install.R
