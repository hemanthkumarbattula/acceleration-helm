#docker build --target acceleration-dv -t repo/name:tag .
FROM node AS acceleration-dv
RUN mkdir -p /app
WORKDIR /app
COPY ./devops-challenge/acceleration-dv /app
ENV WEB_PORT 3001
RUN yarn install
RUN yarn build
CMD ["yarn", "start"]

#docker build --target acceleration-a -t repo/name:tag .
FROM node AS acceleration-a
RUN mkdir -p /app
WORKDIR /app
COPY ./devops-challenge/acceleration-a /app
ENV WEB_PORT 3002
RUN yarn install
RUN yarn build
CMD ["yarn", "start"]

#docker build --target acceleration-calc -t repo/name:tag .
FROM node AS acceleration-calc
RUN mkdir -p /app
WORKDIR /app
COPY ./devops-challenge/acceleration-calc /app
ENV WEB_PORT 3000
RUN yarn install
RUN yarn build
CMD ["yarn", "start"]