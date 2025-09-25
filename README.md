# Dotfiles

Grab `yadm` - https://yadm.io/docs/install

```bash
  yadm config local.class Personal/Work
  yadm clone https://github.com/DeanFoley/dotfiles
  chmod +x ~/.config/yadm/bootstrap
  yadm bootstrap
```

Read `.config/yadm/bootstrap` for the full set of steps but basically:

 - changes shell
 - runs MacOS-specific steps if required (Homebrew installation; set up MacOS settings; configure iTerm2; symlink VSCode config)
 - set up ZSH with OMZ & Spaceship
 - set up Tmux & plugins

Please don't complain about anything in this repo.

Please do raise an issue if you find anything like a bug!
