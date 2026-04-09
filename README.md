# JSPlaylist Mod for Spider Monkey Panel

Packaged `jsplaylist-mod` setup for foobar2000's Spider Monkey Panel.

- Latest download: [Releases](https://github.com/Ci303/jsplaylist-mod-smp/releases/latest)
- Package name in SMP: `JSPlaylist Mod`
- Package folder: `{44D1740D-A1FE-4854-86BA-44F781063A88}`

## What This Repo Contains

- an installable Spider Monkey Panel package
- package-local assets, so users do not need to overwrite `foo_spider_monkey_panel\samples\jsplaylist-mod`
- default `JSPlaylist` panel properties exported from the working setup used to assemble this package

## Install From Releases

1. Download the latest ZIP from [Releases](https://github.com/Ci303/jsplaylist-mod-smp/releases/latest).
2. Extract the ZIP.
3. Copy the folder `{44D1740D-A1FE-4854-86BA-44F781063A88}` to `%AppData%\foobar2000-v2\foo_spider_monkey_panel\packages\`.
4. Open foobar2000.
5. Add a Spider Monkey Panel.
6. Open `Configure Panel...`.
7. Set `Script source` to `Package`.
8. Choose `JSPlaylist Mod`.

## Install From Source

1. Download this repository as a ZIP, or clone it.
2. Copy `package\{44D1740D-A1FE-4854-86BA-44F781063A88}` to `%AppData%\foobar2000-v2\foo_spider_monkey_panel\packages\`.
3. Add a fresh Spider Monkey Panel and choose `JSPlaylist Mod` from `Configure Panel...`.

## Requirements

- foobar2000 with Spider Monkey Panel installed
- fonts commonly used by `jsplaylist-mod`: `Guifx v2 Transports`, `Wingdings 2`, and `Wingdings 3`

## Notes

- Use a fresh SMP panel when testing. Existing panel properties can override the packaged defaults.
- This repo packages a working sample-based setup. It is not the untouched stock sample folder republished as-is.
- Original JSPlaylist by Br3tt.
- Spider Monkey Panel port and bundled-sample work by marc2003.
- Provenance details are in [ATTRIBUTION.md](./ATTRIBUTION.md).

## Repo Layout

- [package](./package): installable SMP package folder
- [scripts/build-release.ps1](./scripts/build-release.ps1): builds the release ZIP
- [ATTRIBUTION.md](./ATTRIBUTION.md): provenance and authorship notes
- [PUBLISHING.md](./PUBLISHING.md): remote setup and release steps
- [.github/workflows/release.yml](./.github/workflows/release.yml): GitHub Actions release workflow

## Build A Release ZIP

From the repo root:

```powershell
powershell -ExecutionPolicy Bypass -File .\scripts\build-release.ps1
```

This creates a ZIP in `dist\`.

## Releases

Pushing a `v*` tag runs [release.yml](./.github/workflows/release.yml), which builds the ZIP and attaches it to a GitHub Release.
