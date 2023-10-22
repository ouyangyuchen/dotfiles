# Dotfiles
[**Dotbot**](https://github.com/anishathalye/dotbot) is useful to simplify the dotfile installation process for users.
You can change the configuration file [`install.conf.yaml`](https://github.com/ouyangyuchen/dotfiles/blob/master/install.conf.yaml) to guide dotbot's linking.

## Installation
```sh
git clone https://github.com/ouyangyuchen/dotfiles.git ~/dotfiles
cd ~/dotfiles
./install
```

## Dotfile list
### Editor
- vim: `~/.vimrc <---> vimrc`
- nvim: `~/.config/nvim/ <---> nvim/`, using lua configuration and [lazy.nvim](https://github.com/folke/lazy.nvim) as plugin manager

### Others
- git: `~/.gitconfig <---> gitconfig`
