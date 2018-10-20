# Azure Pipelines CI

Azure Pipelines works surprisingly well, with no hacks needed to get things going.

## Example config

```yaml

pool:
  vmImage: 'Ubuntu 16.04'

steps:
- script: |
    PURESCRIPT_TAG=v0.12.0
    PSC_PACKAGE_TAG=v0.3.2

    PURESCRIPT=https://github.com/purescript/purescript/releases/download/$PURESCRIPT_TAG/linux64.tar.gz
    PSC_PACKAGE=https://github.com/purescript/psc-package/releases/download/$PSC_PACKAGE_TAG/linux64.tar.gz

    wget -O $HOME/purescript.tar.gz $PURESCRIPT
    wget -O $HOME/psc-package.tar.gz $PSC_PACKAGE

    tar -xvf $HOME/psc-package.tar.gz -C $HOME/
    tar -xvf $HOME/purescript.tar.gz -C $HOME/

    mv $HOME/purescript/* $HOME/bin
    mv $HOME/psc-package/* $HOME/bin

    chmod a+x $HOME/bin
  displayName: 'Install deps'
- script: |
    export PATH=./bin:$HOME/bin:$PATH

    which purs
    which psc-package

    make
  displayName: 'Make'
```

If you don't mind using npm:

```yaml
pool:
  vmImage: 'Ubuntu 16.04'

steps:
- script: |
    export PATH=~/.npm/bin:$PATH
    npm set prefix ~/.npm
    npm i -g purescript psc-package-bin-simple
    make setup-only
    psc-package verify
  displayName: 'Install deps and run'
```

From <https://github.com/justinwoo/vidtracker/blob/520fb4288de13114394f40f2b191553714c6bd5d/azure-pipelines.yml> and <https://github.com/justinwoo/spacchetti/blob/f6779d19cc0e9bf3cd041966dd14b480f48dbc57/azure-pipelines.yml>
