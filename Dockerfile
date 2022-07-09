FROM node:16
WORKDIR /home/node
COPY . .
ENV PORT 80
RUN npm install
CMD [ "node", "app.js" ]