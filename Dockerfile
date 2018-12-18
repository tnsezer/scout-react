FROM node:latest
# set working directory
RUN mkdir -p /usr/src/app
# Workdir
WORKDIR /usr/src/app

#ENV PATH /usr/src/app/node_modules/.bin:$PATH
COPY . /usr/src/app
# install and cache app dependencies
RUN npm install
#RUN npm install react-scripts -g --silent



ENV NODE_ENV=production
ENV PORT=4000

# start app
CMD ["npm", "start"]

EXPOSE 4000