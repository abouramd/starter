# 💤 LazyVim

A starter template for [LazyVim](https://github.com/LazyVim/LazyVim).
Refer to the [documentation](https://lazyvim.github.io/installation) to get started.

# Run in Docker

```bash

docker run -w /dir  -it -v $PWD:/dir -p 3000:3000 --rm alpine:edge sh -uelic '
  apk add zsh git lazygit fzf curl neovim ripgrep alpine-sdk npm nodejs clang clang-dev fd luarocks unzip wget gzip bash tree-sitter --update

  mkdir -p ~/.local/share/nvim/mason/bin/
  ln -s /usr/bin/clangd ~/.local/share/nvim/mason/bin/clangd
  mkdir -p ~/.local/share/nvim/mason/packages/clangd
  
  git clone https://github.com/abouramd/starter ~/.config/nvim
  zsh
'




```
