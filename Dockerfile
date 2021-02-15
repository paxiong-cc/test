# build stage
FROM node:15.8.0 as build-stage

WORKDIR /app

COPY . .

RUN npm install --registry=https://registry.npm.taobao.org \
    && npm run build

# production stage
FROM nginx:stable-alpine as production-stage

COPY --from=build-stage /app/dist /usr/share/nginx/html

EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]