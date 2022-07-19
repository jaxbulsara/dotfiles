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


## Building Vim

wget <.tar.gz>
tar xzf <.tar.gz>
cd vim*
./configure --with-features=huge --enable-balloon_eval=yes --enable-pythoninterp=yes --enable-python3interp=yes
sudo make install
