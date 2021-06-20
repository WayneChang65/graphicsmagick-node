# The Debian Linux with preinstalled Node.js

FROM node:14.17.1-buster

RUN apt-get update && apt-get -y install graphicsmagick

CMD [ "/bin/sh" ]

