# Dotfiles

Install scripts and dotfiles

## Main philosophy

Here is my configuration files for different tools that I use.

The goal of that project is to setup tools to develop or debug server easily and in a replicable way.

It mainly relies on storing config files and populating them with [chezmoi](https://www.chezmoi.io/) (previously with [stow](https://www.gnu.org/software/stow/) ).

```sh
stow -t $HOME -d $HOME/dotfiles/dotfiles $i
```

There is also possibilities to install binaries and tools without the need of admin rights.

## Option 1: Installing mise

The idea is to install [mise](https://mise.jdx.dev/) to install tools and [chezmoi](https://www.chezmoi.io) to copy config files.

### Requirements

- [Mise](https://mise.jdx.dev/getting-started.html)
- [Zsh](https://www.zsh.org/)

###
- Install uv using mise: `mise use -g github:twpayne/chezmoi`
- Initialise dotfiles repository: `mise x -- chezmoi init ok-lch --apply`
- Done


### Optional

- [Kitty](https://sw.kovidgoyal.net/kitty/binary/)

## Alternative option: Working in  a container

The idea is to create a container, install needed tool for developement and to setup various configuration without the need of admin rights.

## How to use?

### Requirements

- [Podman](https://podman.io/) (recommended) (or [Docker](https://www.docker.com/) (not tested))
- [Distrobox](https://distrobox.it/)

### Usage

- Clone this repo in your HOME directory: `git clone https://github.com/LaurentChion/dotfiles.git -o ~/.dotfiles`
- Go into it: `cd .dotfiles`
- Create the container: `distrobox assemble create`
- Load configurations: `./scripts/stow.sh`
