# Type-Level Programming

In PureScript, type-level programming isn't about being "smart" or "talented", it's only about solving problems. If you're seeking validation or for something to "prove" your "intelligence", you may be better off reading books or arguing politics on Twitter instead.

This is a truly exciting and interesting area of PureScript, but most people wanting to look at this don't understand enough fundamentals to actually solve their problems. Instead of trying to link you to my blog posts, it's more useful for me to write down a list of topics you should read about and know before you try to start doing this:

* Pattern matching (e.g. of Data.List Cons, Nil)
* Type classes, single parameters and their instances
* Proxy, SProxy, etc.
* Multiple parameter type classes
* Functional dependencies
* Overlapping instances
* Row polymorphism in PureScript
* PureScript-Record
* PureScript-Variant
* Datatype Generics/PureScript-Generics-Rep
* PureScript-Typelevel-Prelude

Optional:
* Instance chains in PureScript

The associated literature for some of these topics in the [GHC User's Guide](https://downloads.haskell.org/~ghc/latest/docs/html/users_guide/glasgow_exts.html) make for a good first start to read about, and long-form explanations can also be found on [PureScript By Example](https://leanpub.com/purescript/read).

For understanding, you should devote some time to making some examples of each topic and take some notes that you can refer to later, such as blog posts, an ORG file, or written notes.

To tie everything together, you might read my post [Type classes and instances are pattern matching for types](https://qiita.com/kimagure/items/08c59fa21adcd6968ae1).
