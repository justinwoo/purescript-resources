# HTTP Requests

I only use libraries that use Aff for requests. Here are the two libraries I actually use:

## Milkis

I made this library so I could use [Fetch](https://developer.mozilla.org/en-US/docs/Web/API/Fetch_API/Using_Fetch) on both the Browser (through window) and Node (through node-fetch). See its docs at <https://purescript-milkis.readthedocs.io/en/latest/>

See repo at <https://github.com/justinwoo/purescript-milkis>

## Affjax

This is a library for working with XHR by Slamdata. It works, so you can use it. It currently has concepts of request and response data types and does come with some pains of dealing with Argonaut's Json types, but if you don't really care about Argonaut, you can set it to use the String responses and parse the JSON yourself instead. Read its and docs and see it at <https://github.com/slamdata/purescript-affjax>
