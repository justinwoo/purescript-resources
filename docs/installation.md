# Installation

I wrote a blog post about this for people who want to install PureScript tooling via npm: <https://qiita.com/kimagure/items/570e6f2bbce5b4724564>

## About npm in general

### Prefix

Make sure you have prefix set for npm in `~/.npmrc`:

```
prefix="~/.npm"
```

If you don't do this, npm installations overall in your system will be messed up.

**never run npm with `sudo`.**

### Set your npm paths

```
export PATH="$HOME/.npm/bin:$PATH"
export PATH="./node_modules/.bin:$PATH"
```

## If you want to set up PureScript tooling via npm

```
npm i -g purescript pulp psc-package-bin-simple
```

## If you don't want to set up tooling via npm

Grab the PureScript binary from Github releases and put it in your path (e.g. `~/.local/bin/`): <https://github.com/purescript/purescript/releases>

Grab the Psc-Package binary from Github releases and put it in your path: <https://github.com/purescript/psc-package/releases>

You will have to install `pulp` via npm, but you don't necessarily have to use pulp. Nevertheless, `npm install -g pulp` or `npm i -S pulp` in your project.
