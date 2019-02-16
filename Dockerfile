# based on https://github.com/GoogleContainerTools/kaniko/blob/4feed0ff357cc224b73fc36326d4b6df6748893a/deploy/Dockerfile_debug

FROM gcr.io/kaniko-project/executor:latest as builder

FROM alpine

COPY --from=builder /kaniko /kaniko
RUN echo "{}" > /kaniko/.docker/config.json

ENV PATH /usr/local/bin:/kaniko
ENV SSL_CERT_DIR=/kaniko/ssl/certs
ENV DOCKER_CONFIG /kaniko/.docker/


WORKDIR /workspace

ENTRYPOINT ["/kaniko/executor"]
