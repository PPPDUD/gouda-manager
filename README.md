# gouda-manager
This is the GitHub repository for the base _Gouda_ package, which is a minimally-opinionated package manager with the goal of being easy for developers and flexible for end-users.

Most package managers (`apt`, `dpkg`, etc.) are built around having a single, canonical package location where every package must provide detailed metadata, and the package manager is expected to handle things like upgrades and uninstalls on its own. Gouda is different: it lets each package choose how it should be installed/uninstalled/upgraded/configured, like most Windows applications.

## Installation
In order to install Gouda, you need to have the `git` version control system installed. On most Debian-based systems, you can install Git by running `sudo apt install git`.

After you've installed Git, run the following snippet in your terminal:
~~~bash
mkdir -p /opt/gouda-packages/
cd /opt/gouda-packages/
git clone https://github.com/PPPDUD/gouda-manager.git
cd gouda-manager/
chmod +x *.sh
./install.sh
~~~

### Upgrading Gouda
Once Gouda is installed, you can upgrade it to the latest version by running `gouda-upgrade gouda-manager/`.

### Uninstalling Gouda
The Gouda package manager can be uninstalled by running `gouda-uninstall gouda-manager/`. If you want to remove all of your Gouda packages as well, use `gouda-uninstall */` instead.

