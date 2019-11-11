# dotfiles

My dotfiles :satisfied: :heart: :see_no_evil: , include:

- [spacemacs](#spacemacs)
- [neovim](#neovim)
- [zsh (oh-my-zsh)](#zsh-oh-my-zsh)
- [prettier](#prettier)
- [ideavim](#ideavim)

Keeping updates.

Welcome to contribute awesome ideas.

## How to use

No auto-link shell script here, because I think you won't use all features of my specified.

Go through the files you want.

### spacemacs

> Make sure you have already installed [spacemacs](http://spacemacs.org/)

Summary:

- All used layers in `dotspacemacs-configuration-layers`, `SPC s s` to find it.
- All custom configurations in `dotspacemacs/user-init` and `dotspacemacs/user-config`, `SPC s s` to find it.
- Custom layers (in `.spacemacs.d/layers`)
  - hack-real-auto-save
  - hack-prettier
  - hack-cider

### neovim

> Make sure you have already installed [vim-plug](https://github.com/junegunn/vim-plug)

Only basic configurations there.

Summary:

- `Leader Key` == `,`
- `jk` == `<Esc>`
- `@@` == `your email, need to customize`
- Plugins
  - [vim-airline](https://github.com/vim-airline/vim-airline)
  - [vim-gitgutter](https://github.com/airblade/vim-gitgutter)
  - [vim-json](https://github.com/elzr/vim-json)

### zsh (oh-my-zsh)

Summary:

- PATH

  ```shell
  # Sqlite3 last version
  export PATH=/usr/local/opt/sqlite/bin:$PATH
  # Python3 default
  export PATH=/usr/local/opt/python/libexec/bin:$PATH
  # Ruby default
  export PATH=/usr/local/opt/ruby/bin:$PATH
  # Flutter
  export PATH=$HOME/flutter/bin:$PATH
  # For crystal
  export PKG_CONFIG_PATH=$PKG_CONFIG_PATH:/usr/local/opt/openssl/lib/pkgconfig
  # For pub
  export PATH=$HOME/.pub-cache/bin:$PATH
  ```

- Theme

  <https://github.com/romkatv/powerlevel10k>

- Alias

  ```shell
  # neovim
  alias vi="nvim"
  alias vim="nvim"
  # proxy
  alias ssrproxy="export http_proxy=http://127.0.0.1:1087 && export https_proxy=http://127.0.0.1:1087"
  alias disproxy="unset http_proxy https_proxy"
  # taobao npm
  alias cnpm="npm --registry=https://registry.npm.taobao.org \
      --cache=$HOME/.npm/.cache/cnpm \
      --disturl=https://npm.taobao.org/dist \
      --userconfig=$HOME/.cnpmrc"
  # homebrew
  alias brew_UG="brew update && brew upgrade && brew cask upgrade --greedy"
  # simple http server
  alias py_HTTP_Server="python3 -m http.server"
  alias php_HTTP_Server="php -S 0.0.0.0:8000"
  # zsh
  alias source_zshrc="source ~/.zshrc"
  # nginx
  alias reset_nginx_conf="cp /usr/local/etc/nginx/nginx.conf.default /usr/local/etc/nginx/nginx.conf"
  # swift
  alias swift="PATH=/usr/bin:$PATH swift"
  # git
  alias git="LANG=\"en_US.UTF-8\" git"
  # docker
  alias dkr="docker"
  alias dkrc="docker-compose"
  ```

- Plugins

  - [zsh-autosuggestions](https://github.com/zsh-users/zsh-autosuggestions)

### prettier

[Prettier](https://prettier.io/) is an opinionated code formatter.

### ideavim

```vimrc
inoremap jk <Esc>
vnoremap jk <Esc>
```

## License

MIT &copy; [g1eny0ung](https://github.com/g1eny0ung)
