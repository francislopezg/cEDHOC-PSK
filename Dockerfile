FROM debian:12-slim 

#COPY ./uoscore-uedhoc /root/uoscore-uedhoc 

ENV SRC_PATH /home/uedhoc
WORKDIR $SRC_PATH

RUN apt-get update
RUN apt-get check
RUN apt-get dist-upgrade -y
RUN apt-get install -y vim iputils-ping rsyslog tcpdump net-tools procps git make gcc g++ python3 python3-pip
#RUN service rsyslog restart	

# Install required Python packages
RUN pip3 install --no-cache-dir --break-system-packages regex pyyaml
RUN pip3 install --no-cache-dir --break-system-packages cbor2==5.9.0

CMD tail -f /dev/null
