# Kaniko Publish Orb

Build and publish container images to container registries *without* docker

Under the hood this uses Google's [Kaniko](https://github.com/GoogleContainerTools/kaniko) project, but aims to provide a very similar interface to the [circleci/docker-publish](https://circleci.com/orbs/registry/orb/circleci/docker-publish) orb.

## Usage

```
orbs:
  kaniko-publish: glenjamin/kaniko-publish@0.0.1

workflows:
  flow:
    jobs:
      - kaniko-publish/publish
```

## Developing

> TODO

## License

Copyright Glen Mailer

MIT Licensed
