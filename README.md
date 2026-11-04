# Rustrum binary releases

Rustrum distribution pipelines are not compatible with Homebrew requirements
(multiple binary builds for different platforms/architectures).
So I have to provide my own keg with formulae that you can tap into your homebrew.

## How do I install these formulae?

`brew install rustrum/releases/<formula>`

Or `brew tap rustrum/releases` and then `brew install <formula>`.

Or, in a `brew bundle` `Brewfile`:

```ruby
tap "rustrum/releases"
brew "<formula>"
```

## Available formulae

- `apate` - [Apate declarative API mocking server](https://github.com/rustrum/apate)
- `xepak` - [Xepak declarative API,RPC,MCP builder with DB backend](https://github.com/rustrum/xepak)

## Documentation

`brew help`, `man brew` or check [Homebrew's documentation](https://docs.brew.sh).

