# dotfiles

My dotfiles :satisfied: :see_no_evil:, include:

- [zsh (oh-my-zsh)](#zsh-oh-my-zsh)
- [spacemacs](#spacemacs)
- [neovim](#neovim)
- [prettier](#prettier)
- [ideavim](#ideavim)

Keeping updated.

## How to use

No auto-link shell script here because I think you won't use all features of my specified.

Go through the files you want.

### zsh (oh-my-zsh)

For Warp users, you can use `.warp.zshrc`, which removes the custom theme and
plugins because Warp has already provided them.

#### PATH

```shell
# Sqlite3 latest version
export PATH=$(brew --prefix)/opt/sqlite/bin:$PATH
# Ruby default
export PATH=$(brew --prefix)/opt/ruby/bin:$PATH
export PATH=$(gem env home)/bin:$PATH
# JDK
export PATH=$(brew --prefix)/opt/openjdk/bin:$PATH
# Pub
export PATH=$HOME/.pub-cache/bin:$PATH
# Add home/bin
export PATH=$HOME/bin:$PATH
```

#### Aliases

```shell
# neovim
alias vi="nvim"
alias vim="nvim"
# proxy
alias clashxproxy="export http_proxy=http://127.0.0.1:7890 https_proxy=http://127.0.0.1:7890 no_proxy=127.0.0.1,localhost,::1"
alias unproxy="unset http_proxy https_proxy no_proxy"
# homebrew
alias brew_UG="brew update && brew upgrade"
# simple http server
alias py_HTTP_Server="python3 -m http.server --bind 127.0.0.1" # local
alias php_HTTP_Server="php -S 0.0.0.0:8000"
# zsh
alias source_zshrc="source ~/.zshrc"
# git
alias git="LANG=\"en_US.UTF-8\" git"
alias git_delete_gone_branches="git branch -vv | grep ': gone]' | awk '{ print \$1; }' | xargs git branch -D"
# docker
alias dkr="docker"
alias dkrc="docker-compose"
alias dkri="docker images"
# kubectl
alias k="kubectl"
alias kpoa="k get po -A --sort-by=.metadata.namespace"
alias kpo="k get po"
# flutter
alias flutter="~/flutter/bin/flutter"
# pnpm
alias pn="pnpm"
# minikube
alias mk="minikube"
```

#### Theme

<https://github.com/romkatv/powerlevel10k>

#### Plugins

- [zsh-autosuggestions](https://github.com/zsh-users/zsh-autosuggestions)

### spacemacs

> Make sure you have already installed [spacemacs](http://spacemacs.org/).

Summary:

- All used layers placed in `dotspacemacs-configuration-layers`. Use `SPC s s` to find them.
- All custom configurations placed in `dotspacemacs/user-init` and `dotspacemacs/user-config`. Use `SPC s s` to find them.
- Custom layers (in `.spacemacs.d/layers`)

### neovim

> Make sure you have already installed [vim-plug](https://github.com/junegunn/vim-plug).

Only basic configurations there. Just for editing some configuration-like files.

Summary:

- `Leader Key` == `,`
- `jk` == `<Esc>`
- `@@` == `your email, need to customize`

Plugins:

```txt
Plug 'morhetz/gruvbox'
Plug 'vim-airline/vim-airline'
Plug 'airblade/vim-gitgutter'
Plug 'elzr/vim-json'
Plug 'editorconfig/editorconfig-vim'
```

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
