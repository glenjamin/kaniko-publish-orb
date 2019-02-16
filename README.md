# Kaniko Publish Orb

Build and publish container images to container registries *without* docker

Under the hood this uses Google's [Kaniko](https://github.com/GoogleContainerTools/kaniko) project, but aims to provide a very similar interface to the [circleci/docker-publish](https://circleci.com/orbs/registry/orb/circleci/docker-publish) orb.

[See the CircleCI Workflow](https://circleci.com/gh/glenjamin/workflows/kaniko-publish-orb/tree/master)

## Usage

See https://github.com/glenjamin/kaniko-publish-orb for the full details.

```
orbs:
  kaniko-publish: glenjamin/kaniko-publish@0.0.1

workflows:
  flow:
    jobs:
      - kaniko-publish/publish
```

## License

Copyright Glen Mailer

MIT Licensed
