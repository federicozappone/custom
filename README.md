# Neovim Configuration

## Neovim Installation

Install build prerequisites

```
sudo apt-get install ninja-build gettext libtool libtool-bin \
autoconf automake cmake g++ pkg-config unzip curl doxygen \
uncrustify clang-format git
```

Install ripgrep for live grep in Telescope

```
sudo apt install ripgrep
```

Build neovim stable from source

```
git clone https://github.com/neovim/neovim.git
cd neovim

git checkout stable

make CMAKE_BUILD_TYPE=RelWithDebInfo
sudo make install
```

## Fonts

Install the icons fonts

```
sudo cp fonts/* /usr/local/are/fonts
sudo fc-cache -fv
```

## NvChad and custom setups

```
git clone https://github.com/NvChad/NvChad $HOME/.config/nvim
git clone https://github.com/federicozappone/custom $HOME/.config/nvim/lua/custom
```

## First launch

```
:PackerInstall
:MasonInstallAll
```
