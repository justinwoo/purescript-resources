# JSON

Currently, I only use my own library Simple-JSON.

## Simple-JSON

Everything you've dreamed of when defining transport types or wanting to work with inferred serialization types for JSON. See its documentation at <http://purescript-simple-json.readthedocs.io/en/latest/>

Repo at <https://github.com/justinwoo/purescript-simple-json>

## Foreign

If you work with JS values, you will want to use the Foreign library. <https://github.com/purescript/purescript-foreign>

## Foreign-Generic

A library for working with data types deriving `Generic`. <https://github.com/paf31/purescript-foreign-generic>

## Argonaut-Core

A library for working with Json values but in a different way. If you want automatic decoding of JSON, this is not the set of libraries you want to use. Otherwise, welcome.

Repo at <https://github.com/purescript-contrib/purescript-argonaut-core>

Also see <https://github.com/purescript-contrib/purescript-argonaut-codecs>

## "None of these libraries do what I want"

Writing your own solution is fairly simple, since you can start by only handling some of the cases you care about most. If you understand how to use single and multiparameter type classes, then you're ready to get started with making your own solution.

First, make sure you understand whether or not you want to use plain `Either`, [`Except`](https://pursuit.purescript.org/packages/purescript-transformers/4.1.0/docs/Control.Monad.Except#t:Except), or something else.

Start by reading through this tutorial:

* <http://purescript-simple-json.readthedocs.io/en/latest/generics-rep.html>

This article alone should give you some ideas on how you might start to implement your own library.

You might want to also read these blog posts:

* <https://github.com/justinwoo/my-blog-posts#automatically-deencoding-json-in-purescript-using-generics-rep>
* <https://github.com/justinwoo/my-blog-posts#writing-a-json-decoder-using-purescripts-rowtolist>
