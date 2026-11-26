# Aktar for Chocolatey

The [Chocolatey](https://community.chocolatey.org) package for [Aktar](https://getaktar.com), which uploads files, screenshots and the clipboard to your own S3, Cloudflare R2 or Backblaze B2 bucket.

```pwsh
choco install aktar
```

The package runs Aktar's own installer, which installs per user into `%LOCALAPPDATA%\Aktar` and keeps itself up to date.

- `aktar/` is the package: `aktar.nuspec` and the install and uninstall scripts.
- **Test** packs it and installs and uninstalls it on a clean Windows runner, on every push.
- **Update** checks [getaktar/desktop](https://github.com/getaktar/desktop) every six hours; for a new release it updates the version, URL and checksum, tests the install, pushes to the community repository (with the `CHOCO_API_KEY` secret) and commits.

Aktar is also on [Scoop](https://github.com/getaktar/scoop-bucket) and in the [Microsoft Store](https://apps.microsoft.com/detail/9PHJL211PWM7).
