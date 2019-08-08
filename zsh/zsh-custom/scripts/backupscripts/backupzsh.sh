rm -rf ~/Documents/config-backups/zsh-config-backup
mkdir ~/Documents/config-backups/zsh-config-backup
cp ~/.zshrc ~/Documents/config-backups/zsh-config-backup/zshrc

mkdir ~/Documents/config-backups/zsh-config-backup/oh-my-zsh
mkdir ~/Documents/config-backups/zsh-config-backup/zsh-custom

ditto ~/.config/zsh-custom ~/Documents/config-backups/zsh-config-backup/zsh-custom
ditto ~/.oh-my-zsh ~/Documents/config-backups/zsh-config-backup/oh-my-zsh

echo "backup finished"
