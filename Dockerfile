FROM openjdk:11.0.16-jre

COPY apache-jmeter-5.4.3.tgz /root

RUN tar xvf /root/apache-jmeter-5.4.3.tgz -C /root/

RUN rm -f /root/apache-jmeter-5.4.3.tgz


EXPOSE 9090



ENTRYPOINT [ "/root/apache-jmeter-5.4.3/bin/mirror-server","--port","9090" ]
