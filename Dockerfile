FROM node:alpine

RUN apk update \
  && apk add jq gettext tar \
  && rm -rf /var/cache/apk/*

RUN npm i -g lerna && rm -rf /root/npm/_cacache

ADD script.sh /bin/
RUN chmod +x /bin/script.sh
ENTRYPOINT ["/bin/script.sh"]

