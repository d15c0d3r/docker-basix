# setup the parent run time environment
FROM node:17-alpine

# initialize the working directory
WORKDIR /app

# copy the files in the current directory to the image
COPY . .

# install dependencies into the image
# if we run the below command without initializing WORKDIR
# the command is run inside the root directory & its only at build-time
# ie. when the container is built
RUN npm install

# EXPOSE [container port] [local port]
EXPOSE 4000

# execute commands on run time
CMD [ "node", "app.js" ]

