ARG build_cmd="build"

FROM node:lts-alpine as build
ARG build_cmd

WORKDIR /app
COPY package*.json ./
COPY . .
RUN yarn install && \
    yarn $build_cmd && \
    rm dist/vite.svg

FROM nginx:alpine
COPY --from=build /app/dist /usr/share/nginx/html
EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]
