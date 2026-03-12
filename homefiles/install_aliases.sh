
DOTFILES_ALIAS="$HOME/dotfiles/homefiles/.bash_aliases"

HOME_ALIAS="$HOME/.bash_aliases"

echo "Setting up bash aliases from dotfiles..."

if [ ! -f "$DOTFILES_ALIAS" ]; then
    echo "ERROR: $DOTFILES_ALIAS not found."
    exit 1
fi

if [ -f "$HOME_ALIAS" ] || [ -L "$HOME_ALIAS" ]; then
    echo "Backing up existing ~/.bash_aliases to ~/.bash_aliases.backup"
    mv "$HOME_ALIAS" "$HOME_ALIAS.backup"
fi


ln -s "$DOTFILES_ALIAS" "$HOME_ALIAS"

echo "Symbolic link created:"
echo "~/.bash_aliases -> $DOTFILES_ALIAS"

echo ""
echo "IMPORTANT:"
echo "Reload your shell with:"
echo "source ~/.bashrc"
echo "or log out and log back in."
