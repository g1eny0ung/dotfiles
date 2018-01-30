# dotfiles

My dotfiles :satisfied: :heart: :see_no_evil: , include:

- [spacemacs](#spacemacs)
- [neovim](#neovim)
- [ideavim](#ideavim)
- [zsh (oh-my-zsh)](#zsh-oh-my-zsh)
- [prettier](#prettier)

Keeping updates.

Welcome to contribute awesome ideas.

## How to use

Not auto link shell script there, because I think you won't be use all features of my specified.

Go through the file you want.

### spacemacs

> Make sure you have already installed [spacemacs](http://spacemacs.org/)

Summary:

- All used layers in `dotspacemacs-configuration-layers`, `SPC s s` to find it.
- All custom configurations in `dotspacemacs/user-init` and `dotspacemacs/user-config`, `SPC s s` to find it.
- Custom layers (in `.spacemacs.d/layers`)
  - Hack-real-auto-save
  - Hack-prettier

### neovim

> make sure you have already installed  [vim-plug](https://github.com/junegunn/vim-plug)

Only basic configurations there.

Summary:

- `Leader Key` == `,`
- `jk` == `<Esc>`
- `@@` == `your email, need to customize`
- Plugins
  - [vim-airline](https://github.com/vim-airline/vim-airline)
  - [vim-gitgutter](https://github.com/airblade/vim-gitgutter)
  - [vim-json](https://github.com/elzr/vim-json)

### ideavim

Summary:

```shell
inoremap jk <ESC>
vnoremap jk <ESC>

set surround

set number
set relativenumber
```

### zsh (oh-my-zsh)

Summary:

- PATH

  ```shell
  export GOPATH=$HOME/go
  export PATH=$HOME/go/bin:$HOME/Library/Haskell/bin:$HOME/.local/bin:$PATH
  # sqlite3 last version
  export PATH=/usr/local/opt/sqlite/bin:$PATH
  ```

- Alias

  ```shell
  # neovim
  alias vi="nvim"
  alias vim="nvim"
  # lantern proxy
  alias goproxy="export http_proxy=http://127.0.0.1:50117 https_proxy=http://127.0.0.1:50117"
  alias disproxy="unset http_proxy https_proxy"
  # taobao npm
  alias cnpm="npm --registry=https://registry.npm.taobao.org \
                  --cache=$HOME/.npm/.cache/cnpm \
                  --disturl=https://npm.taobao.org/dist \
                  --userconfig=$HOME/.cnpmrc"
  alias brew_UG="brew update && brew upgrade && brew cask upgrade"
  alias pyHTTPServer="python -m SimpleHTTPServer"
  ```

- Plugins

  - [zsh-autosuggestions](https://github.com/zsh-users/zsh-autosuggestions)

### prettier

[Prettier](https://prettier.io/) is an opinionated code formatter. 

## License

MIT &copy; [g1eny0ung](https://github.com/g1eny0ung)
