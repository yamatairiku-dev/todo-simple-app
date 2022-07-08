FROM node:lts
WORKDIR /home/node
COPY * WORKDIR

# Set the SHELL to bash with pipefail option
SHELL ["/bin/bash", "-o", "pipefail", "-c"]

RUN npm install

ENTRYPOINT ["/home/node/node app"]