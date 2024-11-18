FROM node:lts-alpine AS deps-front
WORKDIR /app
COPY front .
RUN npm i

FROM deps-front AS build-front
ARG VITE_APP_NAME="Pocketbase"
ARG VITE_API_URL="http://0.0.0.0:8090"
WORKDIR /app
COPY --from=deps-front /app .
RUN npm run build

FROM golang:alpine AS deps-back
WORKDIR /pb
COPY pocketbot/go.mod .
COPY pocketbot/go.sum .
RUN go mod tidy

FROM deps-back AS build-back
WORKDIR /pb
COPY --from=deps-back /pb .
COPY pocketbot .
RUN CGO_ENABLED=0 go build

FROM alpine:latest
WORKDIR /app
COPY --from=build-back /pb/pocketbot .
COPY --from=build-front /app/dist ./pb_public
COPY init.sql ./init.sql
EXPOSE ${POCKET_PORT}
CMD ./pocketbot serve --http=${POCKET_URL}:${POCKET_PORT}