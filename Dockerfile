# =================================
# To Build:
# docker build -t stevenfollis/peteypab:latest .
# To Run:
# docker run -it --rm -p 3000:80 --name peteypab docker.io/stevenfollis/peteypab:latest
# =================================

FROM node:14.9.0-alpine3.12
    
# Run on port 80``
EXPOSE 80

# Create app directory
WORKDIR /usr/src/app

# Install app dependencies
# A wildcard is used to ensure both package.json AND package-lock.json are copied
# where available (npm@5+)
COPY package*.json ./

# If you are building your code for production
# RUN npm ci --only=production
RUN npm ci --only=production

# Bundle app source
COPY . .

CMD [ "node", "./bin/www" ]`