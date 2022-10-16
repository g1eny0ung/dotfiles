# dotfiles

My dotfiles :satisfied: :heart: :see_no_evil:, include:

- [spacemacs](#spacemacs)
- [neovim](#neovim)
- [zsh (oh-my-zsh)](#zsh-oh-my-zsh)
- [prettier](#prettier)
- [ideavim](#ideavim)

Keeping updated.

## How to use

No auto-link shell script here because I think you won't use all features of my specified.

Go through the files you want.

### spacemacs

> Make sure you have already installed [spacemacs](http://spacemacs.org/).

Summary:

- All used layers placed in `dotspacemacs-configuration-layers`. Use `SPC s s` to find them.
- All custom configurations placed in `dotspacemacs/user-init` and `dotspacemacs/user-config`. Use `SPC s s` to find them.
- Custom layers (in `.spacemacs.d/layers`)

### neovim

> Make sure you have already installed [vim-plug](https://github.com/junegunn/vim-plug).

Only basic configurations there.

Summary:

- `Leader Key` == `,`
- `jk` == `<Esc>`
- `@@` == `your email, need to customize`

Plugins:

```
Plug 'morhetz/gruvbox'
Plug 'vim-airline/vim-airline'
Plug 'airblade/vim-gitgutter'
Plug 'elzr/vim-json'
Plug 'editorconfig/editorconfig-vim'
```

### zsh (oh-my-zsh)

Summary:

- PATH

  ```shell
  # Sqlite3 latest version
  export PATH=$(brew --prefix)/opt/sqlite/bin:$PATH
  # Python3 default
  export PATH=$(brew --prefix)/opt/python/libexec/bin:$PATH
  # Ruby default
  export PATH=$(brew --prefix)/opt/ruby/bin:$PATH
  # JDK
  export PATH=$(brew --prefix)/opt/openjdk/bin:$PATH
  # For pub
  export PATH=$HOME/.pub-cache/bin:$PATH
  ```

- Aliases

  ```shell
  # neovim
  alias vi="nvim"
  alias vim="nvim"
  # proxy
  alias clashxproxy="export http_proxy=http://127.0.0.1:7890; export https_proxy=http://127.0.0.1:7890; export no_proxy=127.0.0.1,localhost"
  alias disproxy="unset http_proxy https_proxy no_proxy"
  # homebrew
  alias brew_UG="brew update && brew upgrade && brew upgrade --cask --greedy"
  # simple http server
  alias py_HTTP_Server="python3 -m http.server --bind 127.0.0.1"
  alias php_HTTP_Server="php -S 0.0.0.0:8000"
  # zsh
  alias source_zshrc="source ~/.zshrc"
  # nginx
  alias reset_nginx_conf="cp /usr/local/etc/nginx/nginx.conf.default /usr/local/etc/nginx/nginx.conf"
  # git
  alias git="LANG=\"en_US.UTF-8\" git"
  # docker
  alias dkr="docker"
  alias dkrc="docker-compose"
  # kubectl
  alias k="kubectl"
  # flutter
  alias flutter="~/flutter/bin/flutter"
  ```

- Theme

  <https://github.com/romkatv/powerlevel10k>

- Plugins

  - [zsh-autosuggestions](https://github.com/zsh-users/zsh-autosuggestions)

### Prettier

[Prettier](https://prettier.io/) is an opinionated code formatter.

### ideavim

```vimrc
inoremap jk <Esc>
vnoremap jk <Esc>

set clipboard^=unnamed
set relativenumber

set surround
```

## License

MIT &copy; [g1eny0ung](https://github.com/g1eny0ung)
