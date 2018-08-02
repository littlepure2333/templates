#!/bin/bash

./docker-java-home/bin/java \
   ${JAVA_OPTIONS} \
   -cp /var/lib/h2/h2.jar \
   org.h2.tools.Server \
   -web -webDaemon -webAllowOthers -webPort 81 \
   -tcp -tcpAllowOthers -tcpPort 1521 \
   -baseDir /data/db \
   ${H2_OPTIONS}
