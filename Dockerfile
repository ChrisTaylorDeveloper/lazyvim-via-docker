FROM alpine:edge
WORKDIR /workdir
RUN apk add git lazygit fzf curl neovim ripgrep alpine-sdk --update
RUN git clone https://github.com/LazyVim/starter ~/.config/nvim
