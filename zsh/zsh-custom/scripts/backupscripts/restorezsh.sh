#! /bin/zsh

echo "\nConfiguration restore could not be used currently"
exit

if [ -d "~/Documents/config-backups/zsh-config-backup" ]; then
    rm -rf ~/.zshrc
    rm -rf ~/.oh-my-zsh
    rm -rf ~/.config/zsh-custom/
    
    backup_dir="~/Documents/config-backups/zsh-config-backup"
    
    # check the availibility of backup_dir
    if [ -f [ -d backup_dir/zshrc ] ]
    then
        echo "could not find zshrc in backup files"
        exit
    elif [ -f [ -d backup_dir/zsh-custom ] ]
    then
        echo "could not find zsh-custom dir in backup files"
        exit
    elif [ -f [ -d backup_dir/oh-my-zsh ] ]
    then
        echo "could not find oh-my-zsh dir in backup files"
        exit
    fi
    
    cp backup_dir/zshrc ~/.zshrc

    mkdir ~/.oh-my-zsh
    mkdir ~/.config/zsh-custom
    ditto backup_dir/oh-my-zsh ~/.oh-my-zsh
    ditto backup_dir/zsh-custom ~/.config/zsh-custom

    echo "config restored"
else
    echo "could not found any zsh config backups"
fi

