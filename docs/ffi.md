# FFI

I wrote about this in a blog post called ["User empowerment of FFI in PureScript"](https://qiita.com/kimagure/items/0ce4d9d2792dd110ee45)

You should read these links at minimum:

* PureScript language FFI documentation <https://github.com/purescript/documentation/blob/master/language/FFI.md>
* PureScript documentation guide on FFI <https://github.com/purescript/documentation/blob/master/guides/FFI.md>
* PureScript-Effect uncurried function documentation <https://pursuit.purescript.org/packages/purescript-effect/2.0.0/docs/Effect.Uncurried>

I have some examples of various ways of doing FFI here: <https://github.com/justinwoo/purescript-ffi-intro>

## "What if I need to validate inputs from FFI?"

Use the `Foreign` type from the `purescript-foreign` library and see the next section, which is not only about JSON but also about foreign JS values.
