# my-nvim-config

[![Review style](https://github.com/kevinliao852/my-nvim-config/actions/workflows/style-check.yaml/badge.svg)](https://github.com/kevinliao852/my-nvim-config/actions/workflows/style-check.yaml)

Github: https://github.com/kevinliao852/my-nvim-config

![Preview](https://i.imgur.com/yko6JbH.png)

---

## Instructions

Follow the step-by-step instructions to set up this neovim config on your machine.

These steps are tested on Ubuntu 20.04.6.

### Set up Neovim

#### Download the Neovim's pre-compiled binary (Recommended)

Visit the Neovim's [release](https://github.com/neovim/neovim/tags) page, and choose a tag, e.g., `v0.9.1`, then run the following commands:

```bash=
NVIM_VERSION=v0.9.1
wget https://github.com/neovim/neovim/releases/download/"${NVIM_VERSION}"/nvim-linux64.tar.gz
rm -rf /usr/local/nvim-linux64 && tar -C /usr/local -zxvf nvim-linux64.tar.gz # as root
echo 'PATH=/usr/local/nvim-linux64/bin:$PATH' >> ~/.bashrc
# echo 'PATH=/usr/local/nvim-linux64/bin:$PATH' >> ~/.zshrc # if Z shell is used
source ~/.bashrc
# source ~/.zshrc # if Z shell is used
nvim --version
```

Expected output:

```bash
NVIM v0.9.1
Build type: Release
LuaJIT 2.1.0-beta3

   system vimrc file: "$VIM/sysinit.vim"
  fall-back for $VIM: "/__w/neovim/neovim/build/nvim.AppDir/usr/share/nvim"

Run :checkhealth for more info
```

Reference: [Building Neovim](https://github.com/neovim/neovim/wiki/Building-Neovim)

#### Build prerequisites

The steps illustrated here are only for Ubuntu/Debian. For other platforms, refer to the Neovim's Wiki [page](https://github.com/neovim/neovim/wiki/Building-Neovim#build-prerequisites).

**Ubuntu / Debian**

```bash=
sudo apt-get install ninja-build gettext cmake unzip curl
```

**Arch Linux**

```bash=
sudo pacman -S neovim
```

#### Install from source

```bash=
git clone https://github.com/neovim/neovim
cd neovim && make CMAKE_BUILD_TYPE=RelWithDebInfo
sudo make install
```

Type `nvim --version` in the terminal to verify the neovim is installed:

```bash=
NVIM v0.10.0-dev-400+ge41b2e34b
Build type: RelWithDebInfo
LuaJIT 2.1.0-beta3
Compilation: /usr/bin/cc -O2 -g -Og -g -Wall -Wextra -pedantic -Wno-unused-parameter -Wstrict-prototypes -std=gnu99 -Wshadow -Wconversion -Wvla -Wdouble-promotion -Wmissing-noreturn -Wmissing-format-attribute -Wmissing-prototypes -fno-common -Wno-unused-result -Wimplicit-fallthrough -fdiagnostics-color=always -fstack-protector-strong -DUNIT_TESTING -DINCLUDE_GENERATED_DECLARATIONS -D_GNU_SOURCE -DNVIM_TS_HAS_SET_MAX_START_DEPTH -I/root/neovim/.deps/usr/include/luajit-2.1 -I/usr/include -I/root/neovim/.deps/usr/include -I/root/neovim/build/src/nvim/auto -I/root/neovim/build/include -I/root/neovim/build/cmake.config -I/root/neovim/src

   system vimrc file: "$VIM/sysinit.vim"
  fall-back for $VIM: "/usr/local/share/nvim"

Run :checkhealth for more info
```

For convenience, add the commands to `~/.bashrc` (or `~/.zshrc`) by running the following in your terminal:

```bash=
echo "alias v=nvim" >> ~/.bashrc
# echo "alias v=nvim" >> ~/.zshrc # if Z shell is used
source ~/.bashrc
# source ~/.zshrc # if Z shell is used
```

---

### Set up Config

Reference: [my-nvim-config](https://github.com/kevinliao852/my-nvim-config)

```bash=
mkdir -p ~/.config/nvim
git clone https://github.com/kevinliao852/my-nvim-config.git ~/.config/nvim/
```

Type `v` in the command line to enter into the Neovim, then wait a few seconds to have packages installed.

---

### Optional Dependencies

C/C++:

```bash=
sudo apt install clangd clang-format
pip install cpplint
```

JavaScript/TypeScript:

```bash=
npm install -g typescript
npm install -g typescript-language-server
```

Go:

```bash=
curl -sSfL https://raw.githubusercontent.com/golangci/golangci-lint/master/install.sh | sh -s -- -b $(go env GOPATH)/bin latest
go install golang.org/x/tools/gopls@latest
```

Python:

```bash=
pip install black pylint pyright
```

Tailwind CSS:

```bash=
npm install -g tailwindcss-language-server
```
