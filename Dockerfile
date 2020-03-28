FROM golang:1.14 as build

WORKDIR /go/src/app
 . /go/src/app

RUN go get -d -v ./...

RUN go build -o /go/bin/app

# Now copy it into our base image.
FROM golang:1.14
COPY --from=build /go/bin/app /
CMD ["/app"]
