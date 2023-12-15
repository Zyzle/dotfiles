# --- Xcode CLI tools
xcode-select --install

# --- Homebrew CLI
# https://brew.sh
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

# --- Stuff from Homebrew
brew update
brew tap homebrew/cask-fonts
brew install font-fira-code-nerd-font
brew install --cask stats

# --- Oh My Zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
cp ./headline.zsh-theme ~/.oh-my-zsh/themes/

# --- Install dotfiles
dotfiles=(".aliases" ".gitconfig" ".nvmrc" ".profile" ".zprofile" ".zshrc")
for dotfile in "${dotfiles[@]}"; do
	cp ${HOME}/${dotfile} ${HOME}/${dotfile}.bak	# backup
	cp "./${dotfile}" $HOME/
done

# --- Zsh theme
cp ./headline.zsh-theme ~/.oh-my-zsh/themes/