# setup the parent run time environment
FROM node:17-alpine

# installs the `nodemon` package
# which listens to the changes made in the server code
# and reflects on the running server
RUN npm install -g nodemon

# initialize the working directory
WORKDIR /app

# copy only the package.json so the node_modules
# need not to be created everytime an image is built
COPY package.json .

# install the dependencies
RUN npm install

# copy the files in the current directory to the image
COPY . .

# EXPOSE [host_port]:[container_port]
EXPOSE 4000

# execute commands on run time
CMD [ "npm", "run", "dev" ]

