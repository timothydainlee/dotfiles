# dotfiles

### Installation
1. Install zsh
```
# Linux
sudo apt install zsh

# MacOS
brew install zsh

# oh-my-zsh
sh -c "$(wget -O- [https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh](https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh))"
```
2. Install nvim
```bash
# Linux
curl -LO https://github.com/neovim/neovim/releases/latest/download/nvim.appimage
chmod u+x nvim.appimage
./nvim.appimage

# MacOS
brew install neovim

# vim-plug
sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
```
3. Install tmux

```bash
# Linux
sudo apt install tmux

# MacOS
brew install tmux
```

4. Clone repository

```bash
git clone git@github.com:timothydainlee/dotfiles.git
```

### Configuration
1. Append zsh config

```bash
echo 'source $HOME/dotfiles/.config/zsh/.zshrc' >> ~/.zshrc
```

2. nvim plugin install

```bash
vi ~/dotfiles/.config/nvim/init.vim
:PlugInstall
:CocInstall coc-pyright
```

