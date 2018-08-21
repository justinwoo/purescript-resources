# Etc

## Where are union types from TypeScript?

First, you should read some useful information from Typed Racket to learn how union types and occurence typing work:

* <https://docs.racket-lang.org/ts-guide/types.html?q=T:ts-guide#%28part._.Union_.Types%29>
* <https://docs.racket-lang.org/ts-guide/occurrence-typing.html?q=T:ts-guide>

Once you have read through these, you will want to use

* Regular sum types, where occurence typing is replaced by pattern matching
* Polymorphic Variants via <https://github.com/natefaubion/purescript-variant>
* Some other approximation by first using Foreign types to safely read to types you want to use

If you fully understand the above and you're looking for a challenge, try taking a look at the implementation the associated blog post here: <https://github.com/justinwoo/purescript-Hotteok>
