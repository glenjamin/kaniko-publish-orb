FROM gcr.io/kaniko-project/executor:latest as builder

FROM alpine

COPY --from=builder /kaniko /kaniko

ENV SSL_CERT_DIR=/kaniko/ssl/certs
ENV DOCKER_CONFIG /kaniko/.docker/

ENTRYPOINT ["/kaniko/executor"]
