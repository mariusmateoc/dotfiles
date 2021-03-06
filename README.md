[Marius Mateoc][repo]’s Dotfiles
==========================

These are the base dotfiles that I start with when I set up a new
environment. For more specific local needs I use the `*.local` files
described in the [`Local Settings`](#local-settings) section.

Table of Contents
-----------------

- [Marius Mateoc’s Dotfiles](#marius-mateocs-dotfiles)
  - [Table of Contents](#table-of-contents)
  - [Setup](#setup)
  - [Customize](#customize)
    - [Local Settings](#local-settings)
      - [`~/.bash.local`](#bashlocal)
      - [`~/.gitconfig.local`](#gitconfiglocal)
    - [Installing Custom Fonts MACOS](#installing-custom-fonts-macos)
      - [`~/.vimrc.local`](#vimrclocal)
    - [Forks](#forks)
  - [Update](#update)
  - [License](#license)

Setup
-----

To set up the `dotfiles` run the appropriate snippet in the terminal:

(:warning: **DO NOT** run the `setup` snippet if you do not fully understand
[what it does][setup]. Seriously, **DON'T**!)

| OS | Snippet |
|:---|:---|
| `macOS` | `bash -c "$(curl -LsS https://raw.github.com/mariusmateoc/dotfiles/master/src/os/setup.sh)"` |
| `Ubuntu` | `bash -c "$(wget -qO - https://raw.github.com/mariusmateoc/dotfiles/master/src/os/setup.sh)"` |

The setup process will:

- Download the dotfiles on your computer
  (by default it will suggest `~/projects/dotfiles`).
- Create some additional [directories][dirs].
- [Symlink][symlink] the [`git`][git], [`shell`][shell],
  and [`vim`][vim] files.
- Install applications / command-line tools for
  [`macOS`][install macos] / [`Ubuntu`][install ubuntu].
- Set custom [`macOS`][preferences macos] /
  [`Ubuntu`][preferences ubuntu] preferences.
- Install [`vim` plugins][vim plugins].

Customize
---------

### Local Settings

The `dotfiles` can be easily extended to suit additional local
requirements by using the following files:

#### `~/.bash.local`

The `~/.bash.local` file will be automatically sourced after all
the other [`bash` related files][shell], thus, allowing its content
to add to or overwrite the existing aliases, settings, `PATH`, etc.

Here is a very simple example of a `~/.bash.local` file:

```bash
#!/bin/bash

# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

# Set PATH additions.

PATH="$PATH:$HOME/projects/dotfiles/src/bin"

export PATH

```

#### `~/.gitconfig.local`

The `~/.gitconfig.local` file will be automatically included after
the configurations from `~/.gitconfig`, thus, allowing its content
to overwrite or add to the existing `Git` configurations.

__Note:__ Use `~/.gitconfig.local` to store sensitive information
such as the `Git` user credentials, e.g.:

```bash
[commit]

    # Sign commits using GPG.
    # https://help.github.com/articles/signing-commits-using-gpg/

    gpgsign = true

[tag]

    gpgsign = true

[gpg]

    program = gpg

[user]

    name = Marius Mateoc
    email = account@example.com
    signingkey = XXXXXXXX
```

### Installing Custom Fonts MACOS

If you want to install custom fonts you need to run the following
command from `dotfiles` folder:

```bash
sh ./src/os/install/macos/fonts.sh
```

#### `~/.vimrc.local`

The `~/.vimrc.local` file will be automatically sourced after
`~/.vimrc`, thus, allowing its content to add or overwrite the
settings from `~/.vimrc`.

### Forks

If you decide to [fork] this project, do not forget to substitute
my username with your own in the [`setup` snippets](#setup) and
[in the `setup` script][setup script].

Update
------

To update the dotfiles you can either run the [`setup` script][setup]
or, if you want to update one particular part, run the appropriate
[`os` script](src/os).

License
-------

The code is available under the [MIT license][license].

<!-- Link labels: -->
[dirs]: src/os/create_directories.sh
[fork]: https://help.github.com/en/github/getting-started-with-github/fork-a-repo
[git]: src/git
[install macos]: src/os/install/macos
[install ubuntu]: src/os/install/ubuntu
[license]: LICENSE.txt
[preferences macos]: src/os/preferences/macos
[preferences ubuntu]: src/os/preferences/ubuntu
[repo]: https://github.com/mariusmateoc
[setup script]: https://github.com/mariusmateoc/dotfiles/blob/2f53485df6be75d207d4c5c03c265730b416555a/src/os/setup.sh#L3
[setup]: src/os/setup.sh
[shell]: src/shell
[symlink]: src/os/create_symbolic_links.sh
[vim plugins]: src/vim/vim/pack/minpac/start
[vim]: src/vim
