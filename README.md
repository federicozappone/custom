# Neovim and NvChad Configuration

## Neovim Installation

Install build prerequisites

```
sudo apt install ninja-build gettext libtool libtool-bin \
  autoconf automake cmake g++ pkg-config unzip curl doxygen \
  uncrustify git xclip xsel wl-clipboard ripgrep libstdc++-12-dev
```

Build neovim stable from source

```
git clone https://github.com/neovim/neovim.git
cd neovim
sudo make install
```

Set the command `vi`, `vim` and `nvim` to run neovim

```
export NVIM_PATH=/usr/local/bin/nvim

sudo update-alternatives --install /usr/bin/nvim nvim "${NVIM_PATH}" 110
sudo update-alternatives --install /usr/bin/vi vi "${NVIM_PATH}" 110
sudo update-alternatives --install /usr/bin/vim vim "${NVIM_PATH}" 110
```

## Fonts

Install the nerd fonts patched with codicons

```
sudo cp fonts/* /usr/local/share/fonts
sudo fc-cache -fv
```

## NvChad and custom setups

```
git clone https://github.com/NvChad/NvChad.git $HOME/.config/nvim
git clone https://github.com/federicozappone/custom.git $HOME/.config/nvim/lua/custom
```

## First launch

```
:MasonInstallAll
```
