# Databases

If you're really going to write a backend in PureScript (like on AWS Lambda and other such offerings), you probably need to talk to a database.

## General

Generally, you should learn how to use FFI and bind to the database you actually want to use, then start thinking about how libraries like Simple-JSON can help you decode results from databases.

Once you learn how to use FFI, you will not need anyone else to provide you a library. This is a large part of the reason why many production users of PureScript on Node do not contribute libraries back to the ecosystem, as they make small interfaces to libraries that they build on top of that contain many assumptions.

### Warning

If you see a library that contains a `ReadForeign`, `IsForeign`, or `Decode` constraint, you should probably not use that library, as this is a clear sign of someone imposing a specific combination of libraries on you.

## SQLite3

I wrote this library and it provides a wrapper for node-sqlite3. I use this personally, and have been using it for over two years.

<https://pursuit.purescript.org/packages/purescript-node-sqlite3>

## Postgres

I use this sometimes, like at work. You can use this if you want, or just make your own wrapper for pg.

<https://pursuit.purescript.org/packages/purescript-node-postgres>
