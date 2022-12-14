FROM quay.io/openshiftlabs/node:14-alpine-mad

RUN mkdir -p /opt/src

WORKDIR /opt/src

ADD . /opt/src

RUN chgrp -R 0 /opt/src && \
    chmod -R g=u /opt/src

RUN npm install

CMD npm run dev -d
