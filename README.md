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
| `pasty` | [Pasty](https://danielyan.github.io/pasty-releases/), a hotkey compose box that copies to the clipboard | Itself, via Sparkle (`auto_updates true`), so `brew upgrade` leaves it alone |

Each app's release workflow rewrites `version` and `sha256` in its cask
(`Casks/fresco.rb`, `Casks/pasty.rb`) on every release; don't bump them by hand.
