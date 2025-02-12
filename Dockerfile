FROM alpine:edge

RUN echo "https://dl-cdn.alpinelinux.org/alpine/edge/testing" >> /etc/apk/repositories

RUN apk add zsh zsh-autosuggestions zsh-syntax-highlighting git lazygit fzf curl neovim ripgrep alpine-sdk npm nodejs clang clang-dev fd luarocks unzip wget gzip bash tree-sitter python3 openjdk23 maven --update

RUN echo exit | sh -c "$(wget https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh -O -)" && \
  echo "source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh" >> ~/.zshrc && \
  echo "source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh" >> ~/.zshrc

RUN mkdir -p ~/.local/share/nvim/mason/bin/ && \
  ln -s /usr/bin/clangd ~/.local/share/nvim/mason/bin/clangd && \
  mkdir -p ~/.local/share/nvim/mason/packages/clangd

RUN git clone https://github.com/abouramd/starter ~/.config/nvim && \
  nvim --headless "+Lazy! sync" +qa

WORKDIR /workdir

ENTRYPOINT [ "zsh" ]

