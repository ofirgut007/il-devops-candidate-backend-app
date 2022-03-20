FROM node:latest
LABEL org.opencontainers.image.authors="ofirgut007@gmail.com"
ENV NODE_ENV=production
ENV PORT=3000
WORKDIR /app
COPY ["package.json", "package-lock.json*", "./"]
# install node modules and build assets
RUN npm install -g npm@8.5.5 && npm install --production
#ENV NODE_OPTIONS="--max-old-space-size=8192"
COPY . .
EXPOSE ${PORT}
CMD [ "npm", "run" , "build" ]