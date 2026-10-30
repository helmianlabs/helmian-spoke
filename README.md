# Helmian Spoke

The Helmian Spoke is a small, open-source program that runs on your Windows PC
and lets the agents you add in [Helmian](https://helmian.cloud) do work on that
PC, such as building and previewing projects, only inside the folders you allow.
It pairs once with a short code and then starts each time you sign in.

This repository holds **only the spoke and its Windows installer**, under the
MIT license. The Helmian cloud app is a separate product and is not part of
this repository.

## Download

Signed releases: see [Releases](https://github.com/helmianlabs/helmian-spoke/releases).
Each release is built from this repository's source in GitHub Actions.

## What it does

- **Pairs** your PC with your Helmian account using a one-time code from
  helmian.cloud (Settings > "Set up this PC"). The code is used during setup
  and is not stored.
- **Runs approved work** that your Helmian agents send, limited to the folders
  you chose (by default your user folder). Root-level actions need a signed
  grant from you.
- **Opens your own AI app sign-ins** (for example the ChatGPT, Claude, Grok or
  Gemini command-line tools) on your PC when you ask, so you can use the plan
  you already pay for. The spoke never sees those passwords.
- **Starts at sign-in** through a Windows scheduled task named `HelmianSpoke`.

## Install

1. Download `Helmian-Spoke-Setup-<version>-win-x64.exe` from Releases.
2. Run it and paste the pairing code from helmian.cloud when asked.

The installer is per-user (no admin rights) and installs to
`%LOCALAPPDATA%\Programs\HelmianSpoke`.

## Uninstall

Windows Settings > Apps > Installed apps > **Helmian Spoke** > Uninstall.
This removes the program, the `HelmianSpoke` sign-in task and the spoke's
settings in `%APPDATA%\Helmian`.

## Build from source

```
npm run check
```

The Windows installer is built by `ci/release.yml` (to be moved to `.github/workflows/release.yml`)
(Node.js runtime bundled, Inno Setup compile, SignPath signing).

## Code signing policy

See [CODE_SIGNING_POLICY.md](CODE_SIGNING_POLICY.md).
Free code signing provided by [SignPath.io](https://about.signpath.io/), certificate by [SignPath Foundation](https://signpath.org/).

## Privacy

See [PRIVACY.md](PRIVACY.md).

## License

MIT. Copyright (c) 2026 DairyForge LLC. Bundled Node.js is under its own
MIT-style license (https://github.com/nodejs/node/blob/main/LICENSE).
