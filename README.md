# Alex's dotfiles

## Setup

### Windows

1. Install [Git](https://git-scm.com/download/win)

### macOS

1. Install [Homebrew](https://brew.sh/)

1. Run

   ```shell
   brew install git bash-completion gpg pinentry-mac
   echo "pinentry-program /usr/local/bin/pinentry-mac" >> ~/.gnupg/gpg-agent.conf
   gpg-connect-agent reloadagent /bye
   ```

### Ubuntu

1. Run

   ```shell
   sudo apt update
   sudo apt install -y curl git
   ```

## Installation

Download and run the [install script](https://gist.github.com/alextercete/73b3019dc9c057decbb2cb54cb00e88c). Alternatively, run the following:

```shell
curl -s https://gist.githubusercontent.com/alextercete/73b3019dc9c057decbb2cb54cb00e88c/raw/dotfiles.sh | bash -s <github-username>
```

Restart your shell. Alternatively, run the following:

```shell
source $HOME/.bashrc
```

## Configuration

Configure your Git user:

```shell
git config --file $HOME/.gitconfig.user user.name "<name>"
git config --file $HOME/.gitconfig.user user.email "<email>"
git config --file $HOME/.gitconfig.user user.signingkey "<signing-key>"
```

If you're using Keybase, configure your PGP key:

```shell
keybase pgp export | gpg --import
keybase pgp export --secret | gpg --allow-secret-key-import --import
```
