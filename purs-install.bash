#!/bin/bash

TAG=v0.12.1
PSC_PACKAGE_TAG=v0.4.2

wget -O $HOME/purescript.tar.gz https://github.com/purescript/purescript/releases/download/$TAG/linux64.tar.gz
tar -xvf $HOME/purescript.tar.gz -C $HOME/
mv $HOME/purescript/purs ~/.local/bin

wget -O $HOME/psc-package.tar.gz https://github.com/purescript/psc-package/releases/download/$PSC_PACKAGE_TAG/linux64.tar.gz
tar -xvf $HOME/psc-package.tar.gz -C $HOME/
mv $HOME/psc-package/psc-package ~/.local/bin
