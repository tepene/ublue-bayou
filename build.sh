#!/bin/bash
# remove the default firefox (from fedora) in favor of the flatpak
rpm-ostree override remove firefox firefox-langpacks

echo "-- Installing RPMs defined in recipe.yml --"
rpm_packages=$(yq '.rpms[]' < /tmp/ublue-recipe.yml)
for pkg in $(echo -e "$rpm_packages"); do \
    echo "Installing: ${pkg}" && \
    rpm-ostree install $pkg; \
done
echo "---"

# install yafti to install flatpaks on first boot, https://github.com/ublue-os/yafti
pip install --prefix=/usr yafti

# add a package group for yafti using the packages defined in recipe.yml
yq -i '.screens.applications.values.groups.Custom.description = "Flatpaks defined by the image maintainer"' /etc/yafti.yml
yq -i '.screens.applications.values.groups.Custom.default = true' /etc/yafti.yml
flatpaks=$(yq '.flatpaks[]' < /tmp/ublue-recipe.yml)
for pkg in $(echo -e "$flatpaks"); do \
    yq -i ".screens.applications.values.groups.Custom.packages += [{\"$pkg\": \"$pkg\"}]" /etc/yafti.yml
done

# install ubuntu nerd-fonts
## set font URLs
FONTS_NERD_BASE_URL="https://github.com/ryanoasis/nerd-fonts/releases/latest/download"
FONTS_UBUNTU_FILENAME="Ubuntu.zip"
FONTS_UBUNTUMONO_FILENAME="UbuntuMono.zip"
## set font directories
FONTS_DIR="/usr/share/fonts"
FONTS_UBUNTU_DIR="$FONTS_DIR/ubuntu"
FONTS_UBUNTUMONO_DIR="$FONTS_DIR/ubuntu-mono"
# download and extract fonts
wget -O /tmp/$FONTS_UBUNTU_FILENAME $FONTS_NERD_BASE_URL/$FONTS_UBUNTU_FILENAME
wget -O /tmp/$FONTS_UBUNTUMONO_FILENAME $FONTS_NERD_BASE_URL/$FONTS_UBUNTUMONO_FILENAME
unzip /tmp/$FONTS_UBUNTU_FILENAME -d $FONTS_UBUNTU_DIR
unzip /tmp/$FONTS_UBUNTUMONO_FILENAME -d $FONTS_UBUNTUMONO_DIR
# replace spaces in font name with dash
find $FONTS_UBUNTU_DIR -type f -name "* *" -exec sh -c 'mv "$1" "${1// /-}"' sh {} \;
find $FONTS_UBUNTUMONO_DIR -type f -name "* *" -exec sh -c 'mv "$1" "${1// /-}"' sh {} \;
# update font cache
fc-cache -fv $FONTS_UBUNTU_DIR
fc-cache -fv $FONTS_UBUNTUMONO_DIR
