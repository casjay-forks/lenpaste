# BUILD
FROM docker.io/library/debian:bookworm-20231120-slim AS build

WORKDIR /build

RUN sed -i '/^URIs:/d' /etc/apt/sources.list.d/debian.sources && \
    sed -i 's/^# http/URIs: http/' /etc/apt/sources.list.d/debian.sources && \
    apt-get update -o Acquire::Check-Valid-Until=false && \
    apt-get install --no-install-recommends -y make git golang libsqlite3-dev gcc libc6-dev ca-certificates && \
    apt-get clean

COPY ./go.mod ./go.sum ./

RUN go mod download

COPY . ./

RUN export LDFLAGS="-w -s -X"; \
  export appVer=$(git describe --tags --always | sed 's/-/+/' | sed 's/^v//'); \
  mkdir -p ./dist/bin; \
  go build -trimpath -ldflags="$LDFLAGS main.Version=$appVer" -o ./dist/bin/lenpaste ./cmd/lenpaste/*.go; \
  if [ ! -f "./dist/bin/lenpaste" ]; then exit 1; fi

# RUN
FROM docker.io/library/debian:trixie

COPY ./entrypoint.sh /usr/local/bin/entrypoint.sh

RUN mkdir /data/ && chmod +x /usr/local/bin/entrypoint.sh

VOLUME /data
EXPOSE 80/tcp

COPY --from=build /build/dist/bin/* /usr/local/bin/

CMD [ "/usr/local/bin/entrypoint.sh" ]
