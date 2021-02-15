# build stage
FROM node:v10 as build-stage

WORKDIR /app

COPY . .

RUN npm install --registry=https://registry.npm.taobao.org \
    && npm run build

# production stage
COPY --from=build-stage /app/dist /opt/app/nginx/html

EXPOSE 80

CMD ["docker", "start", "nginx"]