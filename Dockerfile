FROM golang:1.22.2 AS build

WORKDIR /app
COPY . /app

RUN go build -o app

FROM scratch
COPY --from=build /app/app /app/app

CMD ["/app/app"]
