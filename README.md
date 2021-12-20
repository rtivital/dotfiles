# My dotfiles

My dotfiles include: hyper configuration, .bash_profile. and .bashrc. In bash profile I have lots of aliases and useful functions to work with git, npm, yarn, atom, vscode and macos system. Also .bashrc includes special profile to work with git repositories. For more details on git integration see .bashrc and .bash_profile for aliases. Hyper configuration includes some basic plugins and styles.

## Installation

To install my .bash_profile and .bashrc use these commands:

```sh
curl -o- https://raw.githubusercontent.com/rtivital/dotfiles/master/.bash_profile > ~/.bash_profile
curl -o- https://raw.githubusercontent.com/rtivital/dotfiles/master/.bashrc > ~/.bashrc
```

After installation is finished run this command to apply new aliases and git integration (hyper configuration will be updated. automatically after hyper restart):

```sh
source ~/.bash_profile
```

## Keep sync with repo

After installation you can run this bash alias to sync with this Github repo:

```sh
update-dot-files
```

## License

MIT
