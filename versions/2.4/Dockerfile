FROM bandsintown/alpine:3.5

MAINTAINER Bandsintown Devops Team "devops@bandsintown.com"

ENV  SIGIL_VERSION="0.4.0" GEOIP_UPDATE_VERSION="2.4.0"

ADD rootfs /
VOLUME /usr/share/GeoIP

RUN BUILD_DEPS='gcc make libc-dev libtool automake autoconf' \
 && apk-install curl-dev ${BUILD_DEPS} \
 && curl -Ls https://github.com/gliderlabs/sigil/releases/download/v${SIGIL_VERSION}/sigil_${SIGIL_VERSION}_Linux_x86_64.tgz | tar -zxC /usr/local/bin \
 && curl -Ls -o /tmp/geoipupdate-${GEOIP_UPDATE_VERSION}.tar.gz https://github.com/maxmind/geoipupdate/archive/v${GEOIP_UPDATE_VERSION}.tar.gz \
 && cd /tmp \
 && tar zxvf geoipupdate-${GEOIP_UPDATE_VERSION}.tar.gz \
 && cd /tmp/geoipupdate-${GEOIP_UPDATE_VERSION} \
 && ./bootstrap \
 && ./configure --prefix=/usr \
 && make \
 && make install \
 && cd \
 && apk del --purge ${BUILD_DEPS} \
 && rm -rf /var/cache/apk/* \
 && rm -rf /tmp/geoipupdate-*

CMD /usr/local/bin/geoipupdate.sh && crond -f -c /root/crontabs
