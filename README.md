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
git clone https://github.com/ohmyzsh/ohmyzsh.git ~/.oh-my-zsh
```

### Ubuntu

```
sudo apt update
sudo apt install -y curl git zsh socat fzf
git clone https://github.com/ohmyzsh/ohmyzsh.git ~/.oh-my-zsh
chsh -s $(which zsh)
```

## Installation

Download and run the [install script](https://gist.github.com/alextercete/73b3019dc9c057decbb2cb54cb00e88c), then restart your terminal. Alternatively, run the commands below.

### Windows

```
iex "& { $(Invoke-RestMethod https://gist.githubusercontent.com/alextercete/73b3019dc9c057decbb2cb54cb00e88c/raw/dotfiles.ps1) } <github-username>"
```

### macOS & Ubuntu

```shell
sh -c "$(curl -s https://gist.githubusercontent.com/alextercete/73b3019dc9c057decbb2cb54cb00e88c/raw/dotfiles.sh)" sh <github-username>
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
