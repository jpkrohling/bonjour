FROM registry.access.redhat.com/openshift3/nodejs-010-rhel7

RUN mkdir -p /opt/app-root/nodejs \
    && cd /opt/app-root/nodejs \
    && curl --silent -o nodejs.tar.gz https://nodejs.org/dist/v6.3.1/node-v6.3.1-linux-x64.tar.gz \
    && tar xzf nodejs.tar.gz --strip-components=1

ADD . /opt/app-root/src/

EXPOSE 8080

CMD /bin/bash -c '/opt/app-root/nodejs/bin/npm start'