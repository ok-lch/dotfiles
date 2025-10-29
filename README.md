# Dotfiles

Install scripts and dotfiles

## Main philosophy

Here is my configuration files for different tools that I use.

The goal of that project is to setup tools to develop or debug server easily and in a replicable way.

It mainly relies on storing config files and using [stow](https://www.gnu.org/software/stow/) to populate them.

```sh
stow -t $HOME -d $HOME/dotfiles/dotfiles $i
```

There is also possibilities to install binaries and tools without the need of admin rights.

## Option 1: Installing mise and dotbins

The idea is to install [mise](https://mise.jdx.dev/) to install tools and package managers like [uv](https://docs.astral.sh/uv/) or [dotbins](https://github.com/basnijholt/dotbins).

### Requirements

- [Mise](https://mise.jdx.dev/getting-started.html)
- [Stow](https://www.gnu.org/software/stow/)

###
- Install uv using mise: `mise use -g uv`
- Install dotbins: `uv tool install dotbins`
- Clone this repo in your HOME directory: `git clone https://github.com/LaurentChion/dotfiles.git -o ~/.dotfiles`
- Go into it: `cd .dotfiles`

### Optional

- [Kitty](https://sw.kovidgoyal.net/kitty/binary/)


## Option 2: With a container

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
