# JovarkOS 
_an Arch-based GNU/Linux distribution striving towards a out of box experience the Linux desktop has never seen before._

## Head Maintainer:
[Lucas Burlingham](https://github.com/lucasburlingham)

## Project Information: 

Roadmap: [GitHub Project](https://github.com/orgs/JovarkOS/projects/1)

Based on: [Arch Linux](https://archlinux.org/)

Previously based on: [Ubuntu](https://ubuntu.com/)

Desktop Environment: [GNOME](https://www.gnome.org/)

Installer: [Calamares](https://calamares.io/)


_**JovarkOS online:**_

Twitter: [@jovarkos](https://twitter.com/jovarkos)
Discord: [Invite Link](https://discord.gg/8jabsmuyU3)


# How to build
*You will need an Arch-based system with the following packages installed:*
 - git
 - make
 - archiso

### Initial Setup:
1. Clone the `jovarkos-dev-env` repo using `git`:
```sh
git clone https://github.com/jovarkos/jovarkos-dev-env.git
cd jovarkos-dev-env
```
2. Install `jbuild`:
```sh
cd jovarkos-jbuild
make all
```
3. Make changes to the files in `jovarkos-config/` if nessasary (please do not push unless you intend to contribute to the project)

***Make sure you are in the project's root directory (jovarkos-dev-env) before continuing.***

4. Copy an Arch build profile to build from (options are `releng` & `baseline`):
```sh
jbuild -p releng
```
*We recommend `releng` for generating a typical Arch ISO with modifications.*

The resulting ISO file will be in `output/` with the format `jovarkos-2022.04.21-x86_64.iso`.

5. Run & test the resulting ISO file:
```sh
jbuild -r output/jovarkos-2022.04.21-x86_64.iso
```


## Key files to change:
*All paths are relative to `jovarkos-dev-env/jovarkos-config/archlive/airootfs/`. These files will be included in the ISO file, and are subject to be overwritten by installing packages.*

- `/etc/pacman.conf`
Pacman configuration
- `/etc/hostname`
Hostname to be used by the booted ISO file
 - `/etc/os-release`
[os-release Specification](https://www.freedesktop.org/software/systemd/man/os-release.html)
 - `/etc/locale.conf`
Should probably be set to: 
```conf
LANG=en_US.UTF-8
```
