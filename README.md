# AWS Utilities

This is a collection of scripts for working with AWS. The scripts can be run on the client machine or in a Docker image.

## Commands

* `aws-mfa`: Authenticates with MFA and creates temporary credentials for a [named profile](https://docs.aws.amazon.com/cli/latest/userguide/cli-configure-profiles.html) to run commands that require MFA. The credentials are valid for 1 hour.

## Using Docker

You can run these commands in a Docker container by mounting your AWS config directory into the container:

```#bash
docker run --rm -it -v $HOME/.aws:/root/.aws quay.io/upennlibraries/aws-utils:1.9 <command>
```

You can also add this command as an alias to your shell config:

```#bash
alias aws-utils='docker run --rm -it -v $HOME/.aws:/root/.aws quay.io/upennlibraries/aws-utils:1.9'
```
