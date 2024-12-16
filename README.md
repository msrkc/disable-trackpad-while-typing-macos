### Symlink the files

    sudo ln -sf ~/dotfiles/touchguard/TouchGuard /usr/local/bin/TouchGuard
    sudo ln -sf ~/dotfiles/touchguard/touchguard-login.sh /usr/local/bin/touchguard-login.sh
    sudo ln -sf ~/dotfiles/touchguard/com.touchguard.startup.plist ~/Library/LaunchAgents/com.touchguard.startup.plist

### Open the sudoers file using visudo:

    sudo visudo

### Add this line at the end of the file (replace yourusername with your macOS username):

    yourusername ALL=(ALL) NOPASSWD: /usr/local/bin/TouchGuard

### Reload the launchd plist

    launchctl unload ~/Library/LaunchAgents/com.touchguard.startup.plist 2>/dev/null
    launchctl load ~/Library/LaunchAgents/com.touchguard.startup.plist

based on https://github.com/thesyntaxinator/TouchGuard

