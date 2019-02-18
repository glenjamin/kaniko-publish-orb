# based on https://github.com/GoogleContainerTools/kaniko/blob/4feed0ff357cc224b73fc36326d4b6df6748893a/deploy/Dockerfile_debug

FROM gcr.io/kaniko-project/executor:latest as builder

FROM alpine

COPY --from=builder /kaniko /kaniko
RUN echo "{}" > /kaniko/.docker/config.json

ENV PATH="$PATH:/kaniko"
ENV SSL_CERT_DIR=/kaniko/ssl/certs
ENV DOCKER_CONFIG /kaniko/.docker/

# Declare /workspace as a volume so kaniko leaves it alone
VOLUME /workspace
WORKDIR /workspace

ENTRYPOINT ["/kaniko/executor"]
