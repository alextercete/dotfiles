# Alex's dotfiles

## Setup

### Windows

1. Install [Git](https://git-scm.com/download/win)

### macOS

1. Install [Homebrew](https://brew.sh/)

1. Run

   ```shell
   brew install git gpg pinentry-mac
   echo "pinentry-program /usr/local/bin/pinentry-mac" >> ~/.gnupg/gpg-agent.conf
   gpg-connect-agent reloadagent /bye
   ```

### Ubuntu

1. Run

   ```shell
   sudo apt update
   sudo apt install -y curl git zsh
   ```

## Installation

Install [Oh My Zsh](https://github.com/ohmyzsh/ohmyzsh):

```shell
git clone https://github.com/ohmyzsh/ohmyzsh.git ~/.oh-my-zsh
```

Make Zsh your default shell:

```shell
chsh -s /bin/zsh
```

Download and run the [install script](https://gist.github.com/alextercete/73b3019dc9c057decbb2cb54cb00e88c). Alternatively, run the following:

```shell
sh -c "$(curl -s https://gist.githubusercontent.com/alextercete/73b3019dc9c057decbb2cb54cb00e88c/raw/dotfiles.sh)" sh <github-username>
```

Restart your terminal. Alternatively, run the following:

```shell
exec zsh
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
