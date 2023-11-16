#!/bin/sh

dirCreating() {
  mkdir ~/.clones
  mkdir ~/.config
  mkdir -p ~/.local/bin
}

aurInstall() {
  sudo pacman -Syy
  sudo pacman -S --needed base-devel
  sudo pacman -S git
  git clone https://aur.archlinux.org/yay.git ~/.clones/yay
  makepkg -si
  yay --version
}

pkgsInstall() {

}
