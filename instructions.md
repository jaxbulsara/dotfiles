# Linux Mint Setup Guide

## Terminal Bell

sudo modprobe pcspkr

test with:
echo -e \\a


## NordVPN

nordvpn login
nordvpn connect

nordvpn set killswitch on
nordvpn set autoconnect on Miami
nordvpn set dns 208.67.222.222 208.67.220.220
nordvpn whitelist add subnet 192.168.11.0/24

May have to unset and reset autoconnect on reboot.


## Mounting partitions

blkid - gives UUIDs for each partition
Make entries in /etc/fstab
- `ext4`: `UID=[UUID] [/mount/point] ext4 nosuid,nodev,nofail,x-gvfs-show 0 0`
- `ntfs`: `UUID=[UUID] [/mount/point] ntfs-3g permissions,auto 0 0`

sudo mount -a

sudo groupadd mounts
sudo usermod -aG mounts $USER
sudo chown -R :mounts /mnt/data
... to all of the mounts


## Partition copying

rclone mount --daemon --vfs-cache-mode full onedrive: /mnt/data/onedrive
rsync -avrH /mnt/data/onedrive /mnt/data/files
rsync -avrH /mnt/ntfs_storage /mnt/storage


## Plex Media Server

- Install plex media server from plex's instructions.
- Use `service plexmediaserver [command]` to start, stop, or restart the service.
- Figure out the permissions when you do this next time

sudo usermod -aG mounts plex


## Python

sudo apt update
sudo apt install \
	libedit-dev \
	make build-essential libssl-dev zlib1g-dev libbz2-dev libreadline-dev \
	libsqlite3-dev wget curl llvm libncursesw5-dev xz-utils tk-dev libxml2-dev \
	libxmlsec1-dev libffi-dev liblzma-dev \
	unixodbc unixodbc-dev freetds-dev freetds-bin tdsodbc

sudo cp files/odbcinst.ini /etc

export PYENV_ROOT=$HOME/.pyenv
export POETRY_HOME=$HOME/.poetry
export PATH=$PYENV_ROOT/bin:$POETRY_HOME/bin:$PATH

curl -L https://github.com/pyenv/pyenv-installer/raw/master/bin/pyenv-installer | bash
exec $SHELL

pyenv init --path
pyenv init -

sed -Ei \
	-e '/^([^#]|$)/ {a export PYENV_ROOT="$HOME/.pyenv" \nexport PATH="$PYENV_ROOT/bin:$PATH"\n' \
	-e ':a' \
	-e '$!{n;ba};}' ~/.profile
echo 'eval "$(pyenv init --path)"' >> ~/.profile
echo 'eval "$(pyenv init -)"' >> ~/.bashrc

pyenv install 3.10.4
pyenv global 3.10.4

echo "alias python=python3" >> ~/.bashrc

curl -sSL https://install.python-poetry.org | python3 -
poetry completions bash > /etc/bash_completion.d/poetry


## Docker

curl -fsSL https://get.docker.com -o get-docker.sh
sudo sh get-docker.sh
rm get-docker.sh

sudo groupadd docker
sudo usermod -aG docker $USER

reboot


## Javascript

curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.1/install.sh | bash
nvm install node
npm install -g --save-dev eslint prettier \
    @typescript-eslint/eslint-plugin @typescript-eslint/parser

## Synology SSH and Keys

### Enable home directories

In the NAS, go to Control Panel > Users and Groups > Advanced

Enable home directories

### Enable a user to use ssh

local$ ssh -p [port] admin@[synology]
admin@remote$ sudo -i
root@remote$ vim /etc/crontab

Add the following to permanently enable a login shell for a user:

@reboot root sed -ie "/[username]/s;/sbin/nologin;/bin/sh;" /etc/passwd

Replace '[username]' with actual username.

### Enable SSH public keys

root@remote$ vim /etc/ssh/sshd_config

Uncomment the following lines:
PubkeyAuthentication yes
AuthorizedKeysFile	.ssh/authorized_keys

Reboot the NAS

### Create SSH key

local$ ssh-keygen -t rsa -C "[user]@[localhost]"
local$ ssh-copy-id -p [port] [user]@[synology]

Alternatively, copy the public key (e.g. ~/.ssh/id_rsa.pub) to the user's home
directory in the NAS and run:

user@remote$ cat ~/.ssh/id_rsa.pub >> ~/.ssh/authentication_keys

SSH should now work without password


## Vim syntax highlighting

See all highlight groups:

:so $VIMRUNTIME/syntax/hitest.vim


## Show and hide a cinnamon window toolbar

Add keyboard shortcuts for the following commands. When pressed, click on the
window you want to toggle the toolbar for.

### Hide toolbar

Ctrl+Alt+H

```
xprop -f _MOTIF_WM_HINTS 32c -set _MOTIF_WM_HINTS "0x2, 0x0, 0x2, 0x0, 0x0"
```

### Show toolbar

Ctrl+Alt+S

```
xprop -f _MOTIF_WM_HINTS 32c -set _MOTIF_WM_HINTS "0x2, 0x0, 0x1, 0x0, 0x0"
```
