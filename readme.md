# uv example: offline 10 minutes

To reproduce:

- be online
- run `just ideal` (tests should pass)
- go offline
- immediately run `just ideal` (tests should *still* pass)
- wait 10 minutes. (stay offline?)
- run `just ideal` (tests should fail)


## Unexpected: uv works offline initially, but fails after 5-10 minutes

I'm new to `uv`, and so far it has been great. Thanks! But in true "If You Give a Mouse a Cookie" fashion, I've got an additional request :)

I'm often working without an internet connection,
and it would be great if I could depend on `uv`'s package caching to build a project from scratch.

However, as I've played with it, it seems like this behavior only works for about 5--10 minutes after going offline, but fails afterwards with an error like:

```
Using CPython 3.13.5
Creating virtual environment at: .venv
⠸ uv-offline-test==0.1.0                                                                  error: Failed to fetch: `https://pypi.org/simple/pytest/`
  Caused by: Request failed after 3 retries
  Caused by: error sending request for url (https://pypi.org/simple/pytest/)
  Caused by: client error (Connect)
  Caused by: dns error
  Caused by: failed to lookup address information: nodename nor servname provided, or not known
```

I've got an example repo with reproduction instructions at:


Normally, I might not delete the `.venv` or delete the lockfile, but it would be nice to not be afraid of doing these things, especially since they work for about 10 minutes.

This behavior was surprising/unexpected to me since things worked initially offline, but fialed later in the day. I had to do some experimentation to determine that the threshold was about 10 minutes. (In at least one test, it happened after 5 minutes, so it might be variable?)

I'm guessing this is due to some cache expiration policy? What's the reasoning behind the current 10 minutes, and would it be possible to extend it, or provide an option to do so? Would it make sense to avoid the cache expiration if `uv` notices that it is offline? Thanks!
