FROM node:lts
WORKDIR /home/node
COPY * .

# Set the SHELL to bash with pipefail option
SHELL ["/bin/bash", "-o", "pipefail", "-c"]

RUN npm install

CMD ["export", "PORT=80"]
# ENTRYPOINT ["/home/node/node app"]
