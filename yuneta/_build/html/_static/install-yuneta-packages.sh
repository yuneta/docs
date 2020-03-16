#!/bin/bash

#  Exit immediately if a command exits with a non-zero status.
set -e

#################################################################
#   This script must be execute by yuneta user
#################################################################
if [ "$(whoami)" != "yuneta" ]; then
    echo "Script must be run as user: yuneta"
    exit -1
fi

################################################
#   directories of yuneta
################################################
mkdir -p /yuneta/bin
mkdir -p /yuneta/agent
mkdir -p /yuneta/development
mkdir -p /yuneta/development/yuneta
mkdir -p /yuneta/development/projects
mkdir -p /yuneta/development/output

################################################
#   Clone gobj-ecosistema
################################################
git clone https://github.com/gobj-ecosistema/external-libs.git /yuneta/development/yuneta/^gobj-ecosistema/external-libs
git clone https://github.com/gobj-ecosistema/ghelpers.git /yuneta/development/yuneta/^gobj-ecosistema/ghelpers
git clone https://github.com/gobj-ecosistema/ginsfsm.git /yuneta/development/yuneta/^gobj-ecosistema/ginsfsm
git clone https://github.com/gobj-ecosistema/tests-g.git /yuneta/development/yuneta/^gobj-ecosistema/tests-g
git clone https://github.com/gobj-ecosistema/stats.git /yuneta/development/yuneta/^gobj-ecosistema/stats
git clone https://github.com/gobj-ecosistema/timeranger.git /yuneta/development/yuneta/^gobj-ecosistema/timeranger
git clone https://github.com/gobj-ecosistema/ytls.git /yuneta/development/yuneta/^gobj-ecosistema/ytls

################################################
#   Clone yuneta
################################################
git clone https://github.com/yuneta/c-core /yuneta/development/yuneta/^yuneta/c-core
git clone https://github.com/yuneta/c-rc_sqlite /yuneta/development/yuneta/^yuneta/c-rc_sqlite
git clone https://github.com/yuneta/js-core /yuneta/development/yuneta/^yuneta/js-core
git clone https://github.com/yuneta/c-tls /yuneta/development/yuneta/^yuneta/c-tls
git clone https://github.com/yuneta/packages /yuneta/development/yuneta/^yuneta/packages
git clone https://github.com/yuneta/tests-y /yuneta/development/yuneta/^yuneta/tests-y
git clone https://github.com/yuneta/web-skeleton3 /yuneta/development/yuneta/^yuneta/web-skeleton3
git clone https://github.com/yuneta/ybatch /yuneta/development/yuneta/^yuneta/ybatch
git clone https://github.com/yuneta/ycommand /yuneta/development/yuneta/^yuneta/ycommand
git clone https://github.com/yuneta/ylist /yuneta/development/yuneta/^yuneta/ylist
git clone https://github.com/yuneta/yshutdown /yuneta/development/yuneta/^yuneta/yshutdown
git clone https://github.com/yuneta/ystats /yuneta/development/yuneta/^yuneta/ystats
git clone https://github.com/yuneta/ytestconfig /yuneta/development/yuneta/^yuneta/ytestconfig
git clone https://github.com/yuneta/yuno_agent /yuneta/development/yuneta/^yuneta/yuno_agent
git clone https://github.com/yuneta/yuno_cli /yuneta/development/yuneta/^yuneta/yuno_cli
git clone https://github.com/yuneta/yuno-skeleton /yuneta/development/yuneta/^yuneta/yuno-skeleton
git clone https://github.com/yuneta/ygclass-rename /yuneta/development/yuneta/^yuneta/ygclass-rename
git clone https://github.com/yuneta/docs /yuneta/development/yuneta/^yuneta/docs

################################################
#   Clone yuno-store
################################################
git clone https://github.com/yuno-store/emailsender /yuneta/development/yuneta/^yunos/emailsender
git clone https://github.com/yuno-store/emu_device /yuneta/development/yuneta/^yunos/emu_device
git clone https://github.com/yuno-store/logcenter /yuneta/development/yuneta/^yunos/logcenter
git clone https://github.com/yuno-store/watchfs /yuneta/development/yuneta/^yunos/watchfs

################################################
#   Share directories
################################################
chmod g+s /yuneta
chmod g+w /yuneta

################################################
#   Compile
################################################
cp -a /yuneta/development/yuneta/^yuneta/packages/yuneta/* /yuneta/development/yuneta
cp -a /yuneta/development/yuneta/^yuneta/packages/recompila.sh /yuneta/development/yuneta
cp -a /yuneta/development/yuneta/^yuneta/packages/compila.sh /yuneta/development/yuneta
cp -a /yuneta/development/yuneta/^yuneta/packages/yuneta-pull-from-github.sh /yuneta/development/yuneta
cd /yuneta/development/yuneta
/bin/bash ./recompila.sh

################################################
#   Install agent
################################################
cd /yuneta/development/output/agent
/bin/bash ./deploy_agent.sh
cd /yuneta/agent/service
sudo /bin/bash ./install-yuneta-service.sh

################################################
#   Share directories
################################################
find /yuneta -type d -exec chmod g+s {} \;
find /yuneta -type d -exec chmod g+w {} \;
find /yuneta -type f -exec chmod g+w {} \;

