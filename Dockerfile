FROM node:latest

RUN mkdir -p /opt/app
WORKDIR /opt/app

COPY node/package.json .
RUN npm install

COPY node/do_thing.js .
COPY python/do_thing.py .
COPY run_it_all.sh .

CMD bash run_it_all.sh
