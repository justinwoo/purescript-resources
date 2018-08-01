# "Why did PureScript go from Eff to Effect?"

There are quite many ill-informed "takes" on PureScript's switch from Eff with row types to Effect. This page serves to provide a **minimum** reading list for one to become familiar with the subject. If you just hate PureScript, there are [alternatives](http://www.typescriptlang.org/) you can use without having to learn about different ways to represent effects.

There are various resources you can check about this:

* <https://github.com/purescript/purescript/issues/3080>
* <https://github.com/purescript-deprecated/purescript-eff/issues/25>
* <https://github.com/slamdata/purescript-io/blob/master/README.md>

Eff rows were not sufficiently useful in terms of actually guaranteeing what effects were run in a given `Eff row`, and the attempts to track possible exceptions were poor. In addition, these led to many problems with users not knowing how to solve type errors with unification of effect rows.

If you want to actually track effects, find some reading about MTL, Free, Tagless Final, and also read through <https://github.com/natefaubion/purescript-run/blob/master/README.md> for an implementation of extensible, algebraic effects for PureScript.

If you want an example of an approach where you can work with known errors, read through <https://github.com/natefaubion/purescript-checked-exceptions/blob/master/README.md>

## "There was a huge rewrite to go from Eff to Effect"

There was little involved other than for renaming.

<https://twitter.com/jusrin00/status/1021736059040919552>

## "It's hard to go from Eff to Effect"

Unless you already used many tricks to encode extra information by creating types of kind `Type -> Effect`, there are only renaming changes involved.

<https://twitter.com/jusrin00/status/1021737244674154496>
