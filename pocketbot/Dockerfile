FROM golang:alpine
ENV POCKET_URL=0.0.0.0
ENV POCKET_PORT=8090

WORKDIR /pb

COPY go.mod .
COPY go.sum .

RUN go mod tidy

RUN touch init.sql

EXPOSE ${POCKET_PORT}

CMD go run main.go serve --http=${POCKET_URL}:${POCKET_PORT}