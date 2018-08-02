# Base Java image
FROM openjdk:8-jre-slim

# Maintainer
MAINTAINER Emmanuel Buisset <ibalago@gmail.com>

# Port to expose
EXPOSE 81 1521

# Volume containing the H2 data
VOLUME /data/db

# H2 version
ENV H2_VERSION "1.4.197"

# Download
ENV JAR_FILE=/var/lib/h2/h2-${H2_VERSION}.jar
ADD "https://central.maven.org/maven2/com/h2database/h2/${H2_VERSION}/h2-${H2_VERSION}.jar" "${JAR_FILE}"
RUN ln -s "${JAR_FILE}" /var/lib/h2/h2.jar

# Java options
ENV JAVA_OPTIONS ""

# Additional H2 options
ENV H2_OPTIONS ""

# start H2
COPY h2.sh /usr/local/bin/
RUN chmod +x /usr/local/bin/h2.sh
CMD [ "/usr/local/bin/h2.sh" ]
