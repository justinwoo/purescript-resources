# Node Backends

I do not use any libraries to do Node backend development for work, as I have not found any to be useful enough compared to the cost of having the wrong combination of requirements or missing functionality. See the section on FFI to get familiar with how to do things.

## Makkori

I have a library for relatively simple Express usage, which can be extended with normal Express middleware as needed. My vidtracker project uses it to prepare the backend, though there are many other techniques involved here <https://github.com/justinwoo/vidtracker/blob/master/src/Main.purs>

See the repo at <https://github.com/justinwoo/purescript-makkori>

## What about my databases???

Looking on Pursuit alone, you'll find <https://github.com/epost/purescript-node-postgres> is actively maintained. I use node-sqlite3 for many of my projects and keep it fairly maintained, though the binding itself is completely minimal: <https://github.com/justinwoo/purescript-node-sqlite3>

Overall, you should learn how to use FFI so you can make wrappers around things you need and improve their types overall.
