# vcpkg
Retro Technique public vcpkg registry

## Reminder

To update release and/or port from RetroCode.

### If new Release

  - First of all, don't forget to **update VERSION** of modules in RetroCode solution ;
  - **Create new release** on RetroCode repository ;
  - **Copy REF** of the release.

### Pre-update vcpkg

#### If new release

  - In **vcpkg\ports\retrocode\portfile.cmake**, paste REF;
  - In **vcpkg\ports\retrocode\vcpkg.json**, update "version" ;
  - In **vcpkg\ports\retrocode\vcpkg.json**, go back "port-version" to 0.

#### If not a new release

  - In **vcpkg\ports\retrocode\vcpkg.json**, increment "port-version" by 1.

#### Then

  - Commit to main (don't Push origin).

### Post-update vcpkg

  - Open a command line, go to vcpkg repository root directory and execute **git rev-parse head:ports/retrocode** ;
  - Copy the hash ;
  - In **vcpkg\versions\r-\retrocode.json**, paste the hash in "git-tree".

#### If new release

  - In **vcpkg\versions\r-\retrocode.json**, update "version" ;
  - In **vcpkg\versions\r-\retrocode.json**, go back "port-version" to 0 ;
  - In **vcpkg\versions\baseline.json**, update "version" ;
  - In **vcpkg\versions\baseline.json**, go back "port-version" to 0.

#### If not a new release

  - In **vcpkg\versions\r-\retrocode.json**, increment "port-version" by 1 ;
  - In **vcpkg\versions\baseline.json**, increment "port-version" by 1.

#### Then

  - Commit to main ;
  - Push to origin.

### From other repository

  - Don't forget to set your vcpkg.json by updating "version" and "port-version" ;
  - Don't forget to execute **vcpkg x-update-baseline** in the vcpkg-configuration.json repository which is solution directory.
