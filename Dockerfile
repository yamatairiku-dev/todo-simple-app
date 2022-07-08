FROM node:lts
WORKDIR /home/node
COPY * .

# Set the SHELL to bash with pipefail option
SHELL ["/bin/bash", "-o", "pipefail", "-c"]

RUN npm install

ENTRYPOINT ["node app"]