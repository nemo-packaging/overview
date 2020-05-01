#!/bin/bash

# install gitim tool to pull all the repos from the project
# https://aur.archlinux.org/packages/python-gitim-git/
yaourt -S python-gitim-git

# get nemo-packaging repos (~58 repos currently)
python -m gitim --org nemo-packaging --dest /path/to/clone/repositories

# install manjaro-tools
# https://wiki.manjaro.org/index.php?title=Manjaro-tools

yaourt -S manjaro-tools-pkg

# check build environment state
buildpkg -q

# enter the project
cd nemo-packaging

# build all the packages, add -c option to clean existing chroot

# apps
buildpkg -c -n -p tut-git
buildpkg -n -p cor-git

buildpkg -n -p nemo-theme-glacier-git
buildpkg -n -p qt5-quickcontrols-nemo-git
buildpkg -n -p qt5-glacier-app-git
buildpkg -n -p glacier-calc-git
buildpkg -n -p nemo-qml-plugin-settings-git
buildpkg -n -p glacier-camera-git
buildpkg -n -p nemo-qml-plugin-folderlistmodel-git
buildpkg -n -p glacier-filemuncher-git
buildpkg -n -p meego-resource-git
buildpkg -n -p qt5-resource-git
buildpkg -n -p nemo-qml-plugin-thumbnailer-git
buildpkg -n -p glacier-gallery-git
buildpkg -n -p qt5-dbus-extended-git
buildpkg -n -p qt5-mpris-git
buildpkg -n -p glacier-music-git
# glacier-pinquery-git after qt5-ofono-git

# homescreen/de

buildpkg -n -p mce-headers-git
buildpkg -n -p libiphb-git
buildpkg -n -p nemo-keepalive-git
buildpkg -n -p nemo-qml-plugin-dbus-git
buildpkg -n -p ssu-sysinfo-git
buildpkg -n -p nemo-qml-plugin-contextkit-git
buildpkg -n -p nemo-qml-plugin-devicelock-git
buildpkg -n -p qt5-mlite-git
buildpkg -n -p nemo-qml-plugin-configuration-git
buildpkg -n -p nemo-qml-plugin-statusnotifier-git
buildpkg -n -p qt5-iodata-git
buildpkg -n -p sailfish-access-control-git
buildpkg -n -p qt5-timed-git
buildpkg -n -p nemo-qml-plugin-time-git
buildpkg -n -p qt5-pim-git
buildpkg -n -p qt5-mlocale-git
buildpkg -n -p libngf-git
buildpkg -n -p usb-moded-git
buildpkg -n -p mce-git
buildpkg -n -p qt5-mce-git
buildpkg -n -p qt5-contacts-sqlite-extensions-git
buildpkg -n -p qt5-contacts-git
buildpkg -n -p nemo-qml-plugin-contacts-git
buildpkg -n -p nemo-qml-plugin-notifications-git
buildpkg -n -p qt5-ofono-git
buildpkg -n -p glacier-pinquery-git # additional app
buildpkg -n -p qt5-ofono-nemo-extensions-git
buildpkg -n -p qt5-connman-git
buildpkg -n -p nemo-qml-plugin-contentaction-git
buildpkg -n -p qt5-ngfd-git
buildpkg -n -p qt5-usb-moded-git
buildpkg -n -p nemo-qml-plugin-models-git
buildpkg -n -p libuser
buildpkg -n -p sailfish-user-managerd-git
buildpkg -n -p profiled-git
buildpkg -n -p libsailfishkeyprovider-git
buildpkg -n -p nemo-qml-plugin-systemsettings-git
buildpkg -n -p qt5-lipstick-git
buildpkg -n -p lipstick-glacier-home-git
buildpkg -n -p glacier-wayland-session

# need to be clarified

buildpkg -n -p qt5-profile-git
buildpkg -n -p qt5-around-git
buildpkg -n -p sailfish-access-control-qt5-git 
