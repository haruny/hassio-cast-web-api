ARG BUILD_FROM
FROM $BUILD_FROM

ENV LANG C.UTF-8
ENV NODE_ENV production

# Install node and npm
RUN apk add --update nodejs
RUN apk add --update nodejs-npm

WORKDIR /

# Install app dependencies
RUN npm install cast-web-api -g -O

#WORKDIR /usr/lib/node_modules/cast-web-api

# Copy data for add-on
#COPY run.sh /
#RUN chmod a+x /run.sh

EXPOSE 3000

#CMD [ "/run.sh" ]

ENTRYPOINT ["/usr/bin/cast-web-api"]
