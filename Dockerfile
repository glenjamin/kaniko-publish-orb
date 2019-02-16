FROM gcr.io/kaniko-project/executor:latest as builder

FROM alpine

COPY --from=builder /kaniko/executor /kaniko/executor

ENTRYPOINT ["/kaniko/executor"]
