# Travis CI

Travis, being the problem child that it is, over represents resources available to it by default. One normal workaround is to force usage of a different environment by using `sudo: required` in .travis.yml like so:

```yaml
dist: trusty
sudo: required
```

(from <https://github.com/purescript/package-sets/blob/6f9f0b0eaea5e3718c860bc0cbaa651a554aad21/.travis.yml>)

## Telling Haskell RTS the bad news

You can pass runtime system arguments as pass-through arguments to pulp to make Travis build correctly:

```
pulp build -- +RTS -N1 -RTS
```

This will make builds run smoothly most of the time. As with everything Travis-related, godspeed.
