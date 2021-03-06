﻿FROM vkushnir/freeradius:2-oracle
MAINTAINER Vladimir Kushnir <v_kushnir@outlook.com>
LABEL description="AAA Service" \
      version="v0.1"

ARG AHOME=/etc/freeradius

ENV DB_DRIVER=mysql \
    DB_SERVER=localhost \
    DB_USER=username \
    DB_PASSWORD=password \
    DB_NAME=database \
    DB_PORT=3306 \
    RAD_ACCT1=radacct \
    RAD_ACCT2=radacct \
    RAD_POSTAUTH=radpostauth \
    RAD_CHECK=radcheck \
    RAD_REPLY=radreply \
    RAD_GROUPCHECK=radgroupcheck \
    RAD_GROUPREPLY=radgroupreply \
    RAD_USERGROUP=radusergroup \
    READ_GROUPS=yes \
    DELETE_STALE=no \
    SQL_TRACE=no \
    SQL_SOCKS=10 \
    SQL_DELAY=60 \
    SQL_LIFETIME=0 \
    SQL_QUERIES=0 \
    READ_CLIENTS=yes \
    NAS=nas \
    VENDOR=radvendor \
    HUNTGROUP=radhuntgroup \
    THPOOL_START=5 \
    THPOOL_MAX=32 \
    THPOOL_MINSPARE=3 \
    THPOOL_MAXSPARE=10 \
    THPOOL_MAXREQPSERVER=0

WORKDIR $AHOME
COPY raddb/ ./
COPY include/localtime /etc
COPY include/init.sh /usr/bin

RUN mkdir /var/run/freeradius && chown -R freerad:freerad $AHOME /var/log/freeradius /var/run/freeradius

ENTRYPOINT ["init.sh"]
CMD ["-f"]
