# ublue-bayou

[![build-ublue](https://github.com/tepene/ublue-bayou/actions/workflows/build.yml/badge.svg)](https://github.com/tepene/ublue-bayou/actions/workflows/build.yml)

This is my customized Fedora Silverblue based on the fantastic work of [ublue](https://ublue.it/).
It is greatly inspired by [bluefin](https://github.com/ublue-os/bluefin).
If you are looking for nvidia support or integrated [Tailscale](https://tailscale.com/)
etc. bluefin should be your image of choice. Currently I have no plans for
supporting either of them.
The sole purpose of this repo is to have a customized build with all the settings
and tools i need on a daily basis and maybe it will help others to build their own.

## Usage

> **Warning**
> This image is not production ready yet, try it in a VM for a while!

### For existing Silverblue/Kinoite users

1. After you reboot you should [pin the working deployment](https://docs.fedoraproject.org/en-US/fedora-silverblue/faq/#_about_using_silverblue)
   so you can safely rollback.

2. Rebase to `ublue-bayou`

   The `latest` tag will automatically point to the latest build. That build will
   always use the Fedora version specified in [recipe.yml](./recipe.yml)

   ```sh
   rpm-ostree rebase ostree-unverified-registry:ghcr.io/tepene/ublue-bayou:latest
   ```

   This repository builds `date` tags as well, so if you want to rebase to a particular
   day's build:

   ```sh
   rpm-ostree rebase ostree-unverified-registry:ghcr.io/tepene/ublue-bayou:20230403
   ```

   or to make sure that you stay on the same release train

   ```sh
   rpm-ostree rebase ostree-unverified-registry:ghcr.io/tepene/ublue-bayou:37
   ```

## Features

System updates are image-based and automatic. Applications are logically separated
from the system by using Flatpaks, and the CLI experience is contained within OCI
containers:

- Ubuntu-like GNOME layout
  - Includes the following GNOME Extensions
    - Appindicator - for tray-like icons in the top right corner
    - Blur my Shell - for dat bling
    - Dash to Dock - for a more Unity-like dock
    - GSConnect - Integrate your mobile device with your desktop
- GNOME Software with [Flathub](https://flathub.org)
  - Use a familiar software center UI to install graphical software
- Built on top of the the [uBlue main image](https://github.com/ublue-os/main)
  - Extra udev rules for game controllers and [other devices](https://github.com/ublue-os/config)
    included out of the box
  - All multimedia codecs included
  - System designed for automatic staging of updates
    - If you've never used an image-based Linux before just use your computer normally
    - Don't overthink it, just shut your computer off when you're not using it
- Quality of Life Improvements
  - [btop++](https://github.com/aristocratos/btop) resource monitor
  - [wireguard-tools](https://github.com/WireGuard/wireguard-tools) for using and
    configuring WireGuard tunnels
  - [Just](https://github.com/casey/just) task runner for post-install automation
    tasks
  - [zsh](https://zsh.sourceforge.io/) available as an optional shell
  - systemd shutdown timers adjusted to 15 seconds

## Flatpak Applications

There's a curated [list](./etc/yafti.yml) of Flatpak applications which will be offered
for installation after first login. You can easily opt-out my default choices by
deselecting it in the YAFTI menu.

## Verification

These images are signed with sisgstore's [cosign](https://docs.sigstore.dev/cosign/overview/).
You can verify the signature by downloading the `cosign.pub` key from this repo
and running the following command:

```sh
cosign verify --key cosign.pub ghcr.io/tepene/ublue-bayou
```

If you're forking this repo, the uBlue website has [instructions](https://ublue.it/making-your-own/)
for setting up signing properly.
