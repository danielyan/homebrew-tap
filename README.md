# danielyan/tap

Homebrew casks for my own apps.

```sh
brew install --cask danielyan/tap/fresco
```

or, in a Brewfile:

```ruby
cask "danielyan/tap/fresco"
```

| Cask | App | Updates |
|---|---|---|
| `fresco` | [Fresco](https://danielyan.github.io/fresco-releases/), a menu bar wallpaper rotator | Itself, via Sparkle (`auto_updates true`), so `brew upgrade` leaves it alone |

The Fresco release workflow rewrites `version` and `sha256` in
`Casks/fresco.rb` on every release; don't bump it by hand.
