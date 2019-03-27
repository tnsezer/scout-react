FROM node:latest

WORKDIR /tmp
COPY package.json /tmp/
RUN npm config set registry http://registry.npmjs.org/ && npm install

# set working directory
RUN mkdir -p /usr/src/app
# Workdir
WORKDIR /usr/src/app

#ENV PATH /usr/src/app/node_modules/.bin:$PATH
COPY . /usr/src/app
RUN cp -a /tmp/node_modules /usr/src/app/

ENV NODE_ENV=production
ENV PORT=4000

# start app
CMD ["npm", "start"]

EXPOSE 4000