Homebrew-binary
===============
These formulae provide binary installs of software that, for whatever reason, aren't available as source builds in the primary repository.

How do I install these formulae?
--------------------------------
Just `brew tap homebrew/binary` and then `brew install <formula>`.

If the formula conflicts with one from mxcl/master or another tap, you can `brew install homebrew/binary/<formula>`.

You can also install via URL:

```
brew install https://raw.github.com/Homebrew/homebrew-binary/master/<formula>.rb
```

Docs
----
`brew help`, `man brew`, or the Homebrew [wiki][].

[wiki]:http://wiki.github.com/mxcl/homebrew
