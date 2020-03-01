FROM node:6.11.2

WORKDIR /opt/firepoker

COPY package.json bower.json Gruntfile.js start-server.sh /opt/firepoker/
COPY app /opt/firepoker/app

RUN npm install
RUN npm install -g bower grunt-cli@0.1.x
RUN bower install --allow-root

EXPOSE 9000

ENTRYPOINT ["/opt/firepoker/start-server.sh"]
