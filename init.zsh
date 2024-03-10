#! /bin/zsh

source utils/cargo.zsh
source utils/fonts.zsh

echo "installing i3 config"
cp files/i3.conf ~/.config/i3/config

echo "installing zsh config"
cp files/zshrc ~/.zshrc
cp files/alias.zsh ~/.alias.zsh

echo "installing kitty config"
cp files/kitty.conf ~/.config/kitty/kitty.conf

echo "installing git config"
cp files/gitconfig ~/.gitconfig

echo "installing rust programs"
cargoi exa
cargoi starship
cargoi git-delta delta

echo "installing fonts"
install-hack
