# SwellOS Packages

Package build scripts for sbpm, organized by category.

## Structure

```
packages/
  meta/       # Metapackage definitions (kde-plasma, swell-dev, etc.)
  core/       # Base system (glibc, gcc, binutils, linux-api-headers, ...)
  desktop/    # KDE Plasma, Qt, Wayland, PipeWire, dbus, elogind
  browser/    # Firefox, Chromium
  dev/        # LLVM, Rust, Python, git, cmake
  gaming/     # Steam, wine, DXVK, MangoHud
  multimedia/ # FFmpeg, GIMP, OBS, Blender, Audacity
  office/     # LibreOffice, Thunderbird
  network/    # dhcpcd, NetworkManager, openssh, wpa_supplicant
```

## Package format

Each package is a directory:

```
firefox/
  version       # 135.0.1
  depends       # icu, nspr, nss, ...
  sources       # https://archive.mozilla.org/.../firefox-135.0.1.tar.xz
  patches/      # SwellOS-specific patches
  swellbuild    # Build script (bash)
  .sha256       # Checksums for source files
```

## Build

```bash
sbpm -S firefox
```
