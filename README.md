# Alex's dotfiles

## Setup

### Windows

```
winget install -e --id Git.Git
winget install -e --id JanDeDobbeleer.OhMyPosh
winget install -e --id AgileBits.1Password.CLI
winget install -e --id dandavison.delta
winget install -e --id junegunn.fzf
Install-Module z
Install-Module posh-git
```

### macOS

```
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
brew install git fzf
brew install --cask 1password/tap/1password-cli
```

### Ubuntu

```
sudo apt update
sudo apt install -y curl git zsh socat fzf
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
git config --file ~/.gitconfig.user user.name "<name>"
git config --file ~/.gitconfig.user user.email "<email>"
```

If you're using 1Password, configure [commit signing](https://developer.1password.com/docs/ssh/git-commit-signing/):

```shell
git config --file ~/.gitconfig.user user.signingkey "$(op item get "SSH key" --fields "label=public key")"
```
