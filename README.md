# 💤 LazyVim

A starter template for [LazyVim](https://github.com/LazyVim/LazyVim).
Refer to the [documentation](https://lazyvim.github.io/installation) to get started.

# Run in Docker

```bash

docker run -w /dir  -it -v $PWD:/dir -p 3000:3000 --rm alpine:edge sh -uelic '
  apk add zsh zsh-autosuggestions zsh-syntax-highlighting git lazygit fzf curl neovim ripgrep alpine-sdk npm nodejs clang clang-dev fd luarocks unzip wget gzip bash tree-sitter --update

  echo exit | sh -c "$(wget https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh -O -)"
  echo "source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh" >> ~/.zshrc
  echo "source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh" >> ~/.zshrc

  mkdir -p ~/.local/share/nvim/mason/bin/
  ln -s /usr/bin/clangd ~/.local/share/nvim/mason/bin/clangd
  mkdir -p ~/.local/share/nvim/mason/packages/clangd
  
  git clone https://github.com/abouramd/starter ~/.config/nvim
  zsh
'




```
