# My Bash profile

In my bash profile I have lots of aliases and useful functions to work with git, npm, yarn, atom, vscode and macos system. Also .bashrc includes special profile to work with git repositories. For more details on git integration see .bashrc and .bash_profile for aliases.

## Instalation
To install my .bash_profile and .bashrc use these two commands:
```sh
curl -o- https://raw.githubusercontent.com/rtivital/dotfiles/master/.bash_profile > /Users/$(whoami)/.bash_profile
curl -o- https://raw.githubusercontent.com/rtivital/dotfiles/master/.bashrc > /Users/$(whoami)/.bashrc
```

After installation you can run this bash alias to sync with this Github repo:
```sh
update-dot-files
```

## Licence
MIT
