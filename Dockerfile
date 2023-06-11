# !CACHING
# setup the parent run time environment
FROM node:17-alpine

# initialize the working directory
WORKDIR /app

# copy only the package.json so the node_modules
# need not to be created everytime an image is built
COPY package.json .

# install the dependencies
RUN npm install

# copy the files in the current directory to the image
COPY . .

# EXPOSE [container port] [local port]
EXPOSE 4000

# execute commands on run time
CMD [ "node", "app.js" ]

