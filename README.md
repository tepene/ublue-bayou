# ublue-bayou

[![build-ublue](https://github.com/tepene/ublue-bayou/actions/workflows/build.yml/badge.svg)](https://github.com/tepene/ublue-bayou/actions/workflows/build.yml)

This is my customized Fedora Silverblue based on the fantastic work of [ublue](https://ublue.it/),

## Installation

> **Warning**
> This image is not production ready yet, try it in a VM for a while!

To rebase an existing Silverblue installation to the latest build:

```sh
sudo rpm-ostree rebase ostree-unverified-registry:ghcr.io/tepene/ublue-bayou:latest
```

This repository builds date tags as well, so if you want to rebase to a particular
day's build:

```sh
sudo rpm-ostree rebase ostree-unverified-registry:ghcr.io/tepene/ublue-bayou:20230403
```

The `latest` tag will automatically point to the latest build. That build will still
always use the Fedora version specified in `release.yml`, so you won't get accidentally
updated to the next major version.

## Verification

These images are signed with sisgstore's [cosign](https://docs.sigstore.dev/cosign/overview/).
You can verify the signature by downloading the `cosign.pub` key from this repo
and running the following command:

```sh
cosign verify --key cosign.pub ghcr.io/tepene/ublue-bayou
```

If you're forking this repo, the uBlue website has [instructions](https://ublue.it/making-your-own/)
for setting up signing properly.
