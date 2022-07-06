FROM golang:alpine as build-env

ENV GO111MODULE=on
RUN apk --no-cache add git

COPY . /app
WORKDIR /app

RUN mkdir /recordings

RUN ls -lahR && go mod download && go build -o /vnc-recorder-server

FROM jrottenberg/ffmpeg:5.0.1-alpine313
COPY --from=build-env /vnc-recorder-server /
COPY --from=build-env /app/healthcheck.sh /
RUN chmod +x /healthcheck.sh
ENTRYPOINT ["/vnc-recorder-server"]
CMD [""]
