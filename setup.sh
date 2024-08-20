#!/usr/bin/env bash
# Set up the environment for the project
# You have to run PlugInstall in vim
# You have to run CTRL + A + I in tmux
# For copilot you have to run :Copilot Setup

sudo rm -f /usr/local/bin/shell
chmod +x ./shell/*
#sudo ln -f ./shell/* /usr/local/bin/
sudo cp ./shell/* /usr/local/bin/

# Move configs
cp ./conf/.bashrc ~/.bashrc
cp ./conf/.vimrc ~/.vimrc
cp ./conf/.gitconfig ~/.gitconfig

# Tmux
cp ./conf/tmux.config ~/.config/tmux/tmux.config
cp ./conf/tmux.reset.config ~/.config/tmux/tmux.reset.conf
rm -f ~/.tmux.conf
ln ~/.config/tmux/tmux.config ~/.tmux.conf

# Package managers
# Install vim-plug
sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'

# Install tmux plugin manager
if [ ! -d ~/.tmux/plugins/tpm ]; then
    git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
fi


# Install neovim config
git clone https://github.com/86LAK/Neovim-Config.git "${XDG_CONFIG_HOME:-$HOME/.config}"/nvim

# Copy alacritty terminal config
cp ./alacritty/alacritty.toml ~/.config/alacritty/alacritty.toml
