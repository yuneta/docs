#!/bin/bash
#################################################################
#   This script must be execute by NO sudo user
#################################################################

################################################
#   directories of yuneta
################################################
mkdir /yuneta/development
mkdir /yuneta/development/bin
mkdir /yuneta/development/projects
mkdir /yuneta/development/output
mkdir /yuneta/development/yuneta

mkdir /yuneta/bin
mkdir /yuneta/agent
mkdir /yuneta/realms
mkdir /yuneta/repos
mkdir /yuneta/store

################################################
#   Clone gobj-ecosistema
################################################
mkdir -p /yuneta/development/yuneta/^gobj-ecosistema-v2/
hg clone ssh://hg@yuneta.io/yuneta/gobj-ecosistema-v2/docs             /yuneta/development/yuneta/^gobj-ecosistema-v2/docs
hg clone ssh://hg@yuneta.io/yuneta/gobj-ecosistema-v2/external-libs    /yuneta/development/yuneta/^gobj-ecosistema-v2/external-libs
hg clone ssh://hg@yuneta.io/yuneta/gobj-ecosistema-v2/ghelpers         /yuneta/development/yuneta/^gobj-ecosistema-v2/ghelpers
hg clone ssh://hg@yuneta.io/yuneta/gobj-ecosistema-v2/ginsfsm          /yuneta/development/yuneta/^gobj-ecosistema-v2/ginsfsm

################################################
#   Clone yuneta
################################################
mkdir -p /yuneta/development/yuneta/^yuneta-v2/
hg clone ssh://hg@yuneta.io/yuneta/yuneta-v2/c-core                 /yuneta/development/yuneta/^yuneta-v2/c-core
hg clone ssh://hg@yuneta.io/yuneta/yuneta-v2/docs                   /yuneta/development/yuneta/^yuneta-v2/docs
hg clone ssh://hg@yuneta.io/yuneta/yuneta-v2/js-core                /yuneta/development/yuneta/^yuneta-v2/js-core
hg clone ssh://hg@yuneta.io/yuneta/yuneta-v2/yuno-skeleton          /yuneta/development/yuneta/^yuneta-v2/yuno-skeleton
hg clone ssh://hg@yuneta.io/yuneta/yuneta-v2/yuno_agent             /yuneta/development/yuneta/^yuneta-v2/yuno_agent
hg clone ssh://hg@yuneta.io/yuneta/yuneta-v2/yuno_cli               /yuneta/development/yuneta/^yuneta-v2/yuno_cli


################################################
#   Build gobj-ecosistema
################################################
echo "Press any key to build source code"
read

cd /yuneta/development/yuneta/^gobj-ecosistema-v2/external-libs
./configure-libs.sh
./make-libs.sh
./install-libs.sh

cd /yuneta/development/yuneta/^gobj-ecosistema-v2/ghelpers
mkdir build
cd build
cmake ..
make
make install

cd /yuneta/development/yuneta/^gobj-ecosistema-v2/ginsfsm
mkdir build
cd build
cmake ..
make
make install

################################################
#   Build yuneta
################################################
cd /yuneta/development/yuneta/^yuneta-v2/c-core
mkdir build
cd build
cmake ..
make
make install

cd /yuneta/development/yuneta/^yuneta-v2/yuno_agent
mkdir build
cd build
cmake ..
make
make install

cd /yuneta/development/yuneta/^yuneta-v2/yuno_cli
mkdir build
cd build
cmake ..
make
make install

cd /yuneta/development/yuneta/^yuneta-v2/yuno-skeleton
mkdir build
cd build
cmake ..
make
make install

################################################
#   Install agent
################################################
echo "Press any key to install agent"
read

cd /yuneta/development/output/agent/
/bin/bash ./deploy_agent.sh

cd /yuneta/agent/service
sudo ./install-yuneta-service.sh
