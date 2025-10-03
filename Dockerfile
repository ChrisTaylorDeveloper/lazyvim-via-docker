FROM alpine:edge

WORKDIR /root

RUN apk add \
    alpine-sdk \
    build-base \
    cmake \
    coreutils \
    curl \
    fzf \
    gettext-tiny-dev \
    git \
    lazygit \
    ripgrep \
    --no-cache

RUN git clone https://github.com/neovim/neovim

WORKDIR /root/neovim

RUN git checkout stable \
    && make CMAKE_BUILD_TYPE=RelWithDebInfo \
    && make install

RUN git clone https://github.com/LazyVim/starter ~/.config/nvim
