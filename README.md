# JSPlaylist Mod for Spider Monkey Panel

This repository packages a working `JSPlaylist` setup for foobar2000 Spider Monkey Panel.

It is built from:
- the `jsplaylist-mod` sample lineage documented for Spider Monkey Panel
- the live `JSPlaylist` panel properties exported from that setup

The package contents were assembled from the active local setup and repackaged for SMP package installation. It is not the untouched stock sample folder republished as-is.

## Download Options

Once published, users can either:
- download the repository ZIP from the Git host and copy the package folder manually
- download a ready-made release ZIP from the repository's Releases page

## Install

1. Download this repository as a ZIP, or clone it.
2. Copy the folder inside [package](./package) named `{44D1740D-A1FE-4854-86BA-44F781063A88}` to:
   `%AppData%\foobar2000-v2\foo_spider_monkey_panel\packages\`
3. Open foobar2000.
4. Add a Spider Monkey Panel.
5. Open `Configure Panel...`.
6. Set `Script source` to `Package`.
7. Choose `JSPlaylist Mod`.

## Notes

- Use a fresh SMP panel when testing. Existing panel properties can override the packaged defaults.
- The package uses package-local assets, so users do not need to overwrite `foo_spider_monkey_panel\samples\jsplaylist-mod`.
- The script expects the usual `jsplaylist-mod` font dependencies:
  `Guifx v2 Transports`, `Wingdings 2`, and `Wingdings 3`.

## Repo Layout

- [package](./package): installable SMP package folder
- [scripts/build-release.ps1](./scripts/build-release.ps1): builds a release ZIP from the repo contents
- [ATTRIBUTION.md](./ATTRIBUTION.md): provenance and authorship notes
- [PUBLISHING.md](./PUBLISHING.md): remote setup and release steps
- [.github/workflows/release.yml](./.github/workflows/release.yml): GitHub Actions release workflow

## Build Release ZIP

From the repo root:

```powershell
powershell -ExecutionPolicy Bypass -File .\scripts\build-release.ps1
```

That creates a ZIP in `dist\`.

## GitHub Releases

If this repo is pushed to GitHub, pushing a `v*` tag triggers the workflow in
[release.yml](./.github/workflows/release.yml), which builds the ZIP and attaches it to a GitHub Release.

## Attribution

Original JSPlaylist by Br3tt.  
Spider Monkey Panel port and bundled-sample work by marc2003.

This repo packages a sample-based local setup plus exported panel settings from the foobar2000 workspace on this machine. It does not claim authorship of the original JSPlaylist source.
