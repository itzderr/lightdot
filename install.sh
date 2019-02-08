#!/bin/bash
#
# Perform Machine Setup.

#=====================
# Remove old dot files
#=====================
sudo rm -rf ~/.vim > /dev/null 2>&1
sudo rm -rf ~/.vimrc > /dev/null 2>&1
sudo rm -rf ~/.bashrc > /dev/null 2>&1
sudo rm -rf ~/.git-completion.bash > /dev/null 2>&1
sudo rm -rf ~/.gitprompt.sh > /dev/null 2>&1
sudo rm -rf ~/.gitconfig > /dev/null 2>&1
sudo rm -rf ~/.gitignore_global > /dev/null 2>&1
sudo rm -rf ~/.gvimrc > /dev/null 2>&1

#=====================
# Create symlinks in the home folder
# (excluding .git/)
#=====================
for f in ~/lightdot/.[^.]*[^t]
do
    ln -s "$f" "$HOME/${f##*/}"
    echo -e "\nSymlinking $f to $HOME/${f##*/}"
done

echo -e "\n======= All Done!! =======\n"
echo "-Derrick"

source ~/.bashrc
