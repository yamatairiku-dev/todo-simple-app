FROM node:lts
WORKDIR /home/node
COPY package*.json ./

# Set the SHELL to bash with pipefail option
SHELL ["/bin/bash", "-o", "pipefail", "-c"]

RUN npm install

COPY . .

EXPOSE 80
CMD [ "node", "app.js" ]