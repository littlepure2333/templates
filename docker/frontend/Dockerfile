# Apache Tomcat image with build artifact
FROM tomcat

LABEL maintainer="ibalago@gmail.com"

ENV VERSION=1.0.0
ENV APP_FILE http://192.168.100.3:80/ibalago/frontend/web/${VERSION}/web-${VERSION}.war
ENV CONFIG_FILE http://192.168.100.3:80/ibalago/frontend/config/${VERSION}/config-${VERSION}.tar
ENV TERM xterm
ENV JAVA_OPTS -Djava.security.egd=file:/dev/./urandom

ADD ${APP_FILE} /usr/local/tomcat/webapps/frontend.war

ADD ${CONFIG_FILE} /usr/local/tomcat/config.tar
RUN \
	cd /usr/local/tomcat &&\
	tar -xvf config.tar &&\
	rm config.tar

# start
ADD ./start.sh /usr/local/bin/start.sh
RUN chmod +x /usr/local/bin/start.sh
CMD [ "/usr/local/bin/start.sh" ]
