# UI libraries

There are effectively two actively maintained and working solutions.

## React-Basic

Quite transparent React interop. Start by looking here: <https://github.com/f-f/purescript-react-basic-todomvc>

See the starter here: <https://github.com/lumihq/react-basic-starter>

See my fork with all of my opinionated things here: <https://github.com/justinwoo/spacchetti-react-basic-starter>

And the TodoMVC implementation here: <https://github.com/f-f/purescript-react-basic-todomvc>

[React-Basic](https://github.com/lumihq/purescript-react-basic)

## Halogen

Pure PureScript. Fast if you don't write naive code with thousands of unkeyed children. Note that the docs are slow to update, but each major version is very usable. This library can end up being a deep rabbit hole of FP ideas and how FP also models OOP. Consider React-Basic if you want to get started quickly and improve your codebase incrementally.

See the starter projects here: <https://github.com/slamdata/purescript-halogen-template>, <https://github.com/citizennet/purescript-halogen-template>

See an example real-world application with authentication, routing, state management, and more: <https://github.com/thomashoneyman/purescript-halogen-realworld>

[Halogen](https://github.com/slamdata/purescript-halogen/)

## No library

It might be worthwhile to not actually try to write your entire view in PureScript first, and rather interface in your existing application. You should read through the [FFI](./ffi.html) links.
