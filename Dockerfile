FROM node:current-alpine
MAINTAINER Antoine Trouvé <antrouve.pro@gmail.com>

RUN npm install -g newman newman-reporter-htmlextra;

WORKDIR /workspace