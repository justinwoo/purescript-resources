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

You might try this bash script, but if it doesn't work, make a PR: <https://github.com/justinwoo/purescript-resources/blob/master/purs-install.bash>

## Installation of tools through Nix

Unfortunately, the Nix package for PureScript is usually broken, and there is no visible interest in making the package use the binaries from GitHub. As a result, installing the compiler through Nix will usually be broken or irreproducable.

I have started collecting easy ways of installing PureScript-related tools with Nix via the released binaries: <https://github.com/justinwoo/easy-purescript-nix>. Please try this! If you don't use NixOS, you can quite readily use this like so in <https://github.com/justinwoo/dotfiles/commit/3b839ec52cab87df24455987b47fd942b61b4f43>.

You can also try this simple derivation for the compiler: <https://github.com/srdqty/purescript-project-template/blob/902f3e7c5ec4284a0878cb4806553e3756552231/nix/pkgs/purescript/default.nix>

On the other hand, the Psc-Package package on nixpkgs is fine: <https://github.com/NixOS/nixpkgs/blob/a6fa300cf7192b61234436dd199f3678b648a096/pkgs/development/compilers/purescript/psc-package/default.nix>
