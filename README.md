# gouda-manager
This is the GitHub repository for the base _Gouda_ package, which is a minimally-opinionated package manager with the goal of being easy for developers and flexible for end-users.

Most package managers (`apt`, `dpkg`, etc.) are built around having a single, canonical package location where every package must provide detailed metadata, and the package manager is expected to handle things like upgrades and uninstalls on its own. Gouda is different: it lets each package choose how it should be installed/uninstalled/upgraded/configured, like most Windows applications.

## Installation
> [!WARNING]
> Gouda is in early development, and it may have bugs that result in damage to your system or loss of data. You are solely responsible for any damages caused by using Gouda at this time.

In order to install Gouda, you need to have the `git` version control system installed. On most Debian-based systems, you can install Git by running `sudo apt install git`.

After you've installed Git, run the following snippet in your terminal:
~~~bash
sudo mkdir -p /opt/gouda-packages/
cd /opt/gouda-packages/
sudo git clone https://github.com/PPPDUD/gouda-manager.git
cd gouda-manager/
sudo git config core.fileMode false
sudo chmod +x *.sh
sudo ./install.sh
~~~

### Upgrading Gouda
Once Gouda is installed, you can upgrade it to the latest version by running `sudo gouda-upgrade gouda-manager/`.

### Uninstalling Gouda
The Gouda package manager can be uninstalled by running `sudo gouda-uninstall gouda-manager/`. If you want to remove all of your Gouda packages as well, use `sudo gouda-uninstall /opt/gouda-packages/* && sudo rmdir /opt/gouda-packages` instead.

## Package management
### Installing a package from a directory
To install a Gouda package from a directory, run `gouda-install <DIRECTORY>`, where `DIRECTORY` is either:
- the path of a system-global Gouda package, relative to `/opt/gouda-packages/`;
- or the absolute path of a local Gouda package, for example `~/mypkg/`

Note that most packages will install to system directories such as `/usr/local/bin` even if they're being installed from a non-system path.

### Uninstalling a package
To uninstall a Gouda package, run `gouda-uninstall <DIRECTORY>`; `DIRECTORY` follows the same rules as it does for installation.

Note that because Gouda itself doesn't track where packages store their files, it's possible for some residue to be left by mistake; if this occurs, consider reporting it to the package's developer(s).

### Configuring a package
Some packages might offer a configuration utility; to activate it, run `gouda-config <DIRECTORY>`.

### Upgrading a package
Packages can be upgraded using `gouda-upgrade <DIRECTORY>`. Note that Gouda doesn't have a versioning system built-in, so packages must implement upgrading themselves.
