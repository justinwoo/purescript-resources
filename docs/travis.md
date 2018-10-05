# Travis CI

Travis, being the problem child that it is, over represents resources available to it by default. One normal workaround is to force usage of a different environment by using `sudo: required` in .travis.yml like so:

```yaml
dist: trusty
sudo: required
```

(from <https://github.com/purescript/package-sets/blob/6f9f0b0eaea5e3718c860bc0cbaa651a554aad21/.travis.yml>)

## Example configuration

```yaml
language: c
dist: trusty
sudo: required

cache:
  directories:
  - .psc-package
  - output

env:
  - PATH=$HOME/purescript:$HOME/psc-package:$PATH

install:
  - TAG=v0.12.0
  - PSC_PACKAGE_TAG=v0.3.2
  - wget -O $HOME/purescript.tar.gz https://github.com/purescript/purescript/releases/download/$TAG/linux64.tar.gz
  - tar -xvf $HOME/purescript.tar.gz -C $HOME/
  - chmod a+x $HOME/purescript
  - wget -O $HOME/psc-package.tar.gz https://github.com/purescript/psc-package/releases/download/$PSC_PACKAGE_TAG/linux64.tar.gz
  - tar -xvf $HOME/psc-package.tar.gz -C $HOME/
  - chmod a+x $HOME/psc-package

script:
  - make setup-only
  - psc-package verify
```

From <https://github.com/justinwoo/spacchetti/blob/f6779d19cc0e9bf3cd041966dd14b480f48dbc57/.travis.yml>

## Telling Haskell RTS the bad news

You can pass runtime system arguments as pass-through arguments to pulp to make Travis build correctly:

```
pulp build -- +RTS -N1 -RTS
```

This will make builds run smoothly most of the time. As with everything Travis-related, godspeed.
