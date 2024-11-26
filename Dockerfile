# In this Docker file we write instructions i.e how build an image
# 1. Base image, this will make sure when node js starts in a container it will have node and npm commands available
FROM node:23-alpine

# 2. This has to done before npm install bcs npm intall have to look into package.json, slash at end of path is necessary bcs docker knows to make this folder if it does not exist
COPY package.json /app/
COPY ./src /app/src/

# 3. This is one more step before npm install you have change the working directory to /app like we used to do in linux using "cd"
WORKDIR /app

# 4. So just we do in locally npm install we to do the same here, as most of the docker images are linux based you can write linux command in docker file
# Whenever you want to run the any command(linux/node or any command) inside the container you have use RUN derective
RUN  npm install

# 5. Expose the port that your app listens on inside the container (e.g., 3000)
EXPOSE 3007

# 6. CMD directive, start the application 
CMD ["npm", "run", "dev"]