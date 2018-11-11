# Usage with Nix

You might look through this post to see the components involved: <https://qiita.com/kimagure/items/aec640d0047d08d2ce90>

I've been trying to put a few things together:

## easy-purescript-nix

Easily use PureScript with Nix. Doesn't require hard to reproduce builds, but actually prefers binaries that can be downloaded and used readily.

<https://github.com/justinwoo/easy-purescript-nix>

You can see an example of this in action in the vidtracker repo: <https://github.com/justinwoo/vidtracker/blob/f78b3df57eaf5b122f0a0b51cc4e3c246bf96f88/default.nix>

## psc-package2nix

Generates a series of derivations from a solved dependency set from Psc-Package.

<https://github.com/justinwoo/psc-package2nix>

You can see this in action being used in the vidtracker repo: <https://github.com/justinwoo/vidtracker/blob/f78b3df57eaf5b122f0a0b51cc4e3c246bf96f88/install-deps.nix>
