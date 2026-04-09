# Publishing

This repository is ready to push to a remote Git host, but no remote URL is configured locally.

## Before Publishing Publicly

Verify that redistribution of the packaged `JSPlaylist` sample-derived source is allowed under the original upstream terms.

This repository packages:
- a `jsplaylist-mod` sample-based source tree
- local panel-property defaults exported from the working setup

It does not claim authorship of the original JSPlaylist source.

## Create a Remote and Push

From the repo root:

```powershell
git remote add origin https://github.com/YOUR-USER/YOUR-REPO.git
git push -u origin main
```

## Create a Release

The GitHub Actions workflow in [release.yml](./.github/workflows/release.yml) builds the ZIP automatically.

1. Update the package version in:
   [package.json](./package/{44D1740D-A1FE-4854-86BA-44F781063A88}/package.json)
2. Commit the version bump.
3. Create a matching git tag:

```powershell
git add .
git commit -m "Release v1.0.1"
git tag v1.0.1
git push origin main
git push origin v1.0.1
```

Pushing a `v*` tag will:
- build the release ZIP
- upload it as a workflow artifact
- attach it to a GitHub Release

## Manual Local Build

```powershell
powershell -ExecutionPolicy Bypass -File .\scripts\build-release.ps1
```

This creates a ZIP in `dist\`.
