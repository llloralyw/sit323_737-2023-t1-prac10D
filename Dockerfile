FROM  node:16

# Create app directory
WORKDIR /usr/src/app

# Install app dependencies
# A wildcard is used ensure both package.json AND package-lock.json are copied
# Where available (npm@5+)
COPY package*.json ./

RUN  npm install

#Bundle app sourse
COPY server.js .

EXPOSE 8080
CMD ["node",  "server.js" ]
