# ModelPiper Homebrew tap

Casks for [ToolPiper](https://modelpiper.com/toolpiper), the local AI toolkit and MCP server for Apple silicon Macs.

## Install

```sh
brew tap modelpiper/tap
brew trust modelpiper/tap
brew install --cask toolpiper
```

The middle line is not optional on Homebrew 6. A cask served from any tap outside
Homebrew's own is refused with `Refusing to load cask modelpiper/tap/toolpiper from
untrusted tap modelpiper/tap` until the tap is trusted once. `brew trust` records the
decision in `~/.homebrew/trust.json` and you never repeat it. Nothing else about the
install changes, and `brew upgrade` afterwards needs no further trust.

Then launch ToolPiper from Applications. macOS shows its usual first-launch dialog for an app downloaded from the internet; the cask does not remove that dialog, and it appears once.

Requirements: macOS 26 or later on Apple silicon.

## Updates

ToolPiper updates itself. The cask declares `auto_updates true`, so `brew upgrade` follows the cask's own version without fighting the in-app updater. Running `brew upgrade --cask toolpiper` after ToolPiper has already updated itself is harmless.

## Uninstall

```sh
brew uninstall --cask toolpiper
```

That removes the app. Add `--zap` to also remove everything ToolPiper keeps in your home directory, including downloaded models and settings:

```sh
brew uninstall --zap --cask toolpiper
```

## About this tap

The cask file is generated from ToolPiper's release manifest and mirrored here from the ModelPiper monorepo. It is not edited in this repository. Issues and questions: bracicot@modelpiper.com.
