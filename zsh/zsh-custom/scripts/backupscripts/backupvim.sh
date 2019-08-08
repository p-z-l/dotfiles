rm -rf ~/Documents/config-backups/vim-config-backup
mkdir ~/Documents/config-backups/vim-config-backup
mkdir ~/Documents/config-backups/vim-config-backup/vim

cp ~/.vimrc ~/Documents/config-backups/vim-config-backup/vimrc
ditto ~/.vim ~/Documents/config-backups/vim-config-backup/vim

echo "backup finished"
