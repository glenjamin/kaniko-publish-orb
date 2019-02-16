# based on https://github.com/GoogleContainerTools/kaniko/blob/4feed0ff357cc224b73fc36326d4b6df6748893a/deploy/Dockerfile_debug

FROM gcr.io/kaniko-project/executor:latest as builder

FROM alpine

COPY --from=builder /kaniko /kaniko

ENV PATH /usr/local/bin:/kaniko
ENV SSL_CERT_DIR=/kaniko/ssl/certs
ENV DOCKER_CONFIG /kaniko/.docker/
ENV DOCKER_CREDENTIAL_GCR_CONFIG /kaniko/.config/gcloud/docker_credential_gcr_config.json
RUN ["docker-credential-gcr", "config", "--token-source=env"]

WORKDIR /workspace

ENTRYPOINT ["/kaniko/executor"]
