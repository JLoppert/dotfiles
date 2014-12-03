# Show All Hidden Files
defaults write com.apple.finder AppleShowAllFiles YES; killall Finder

# Transparent Dock
defaults write com.apple.dock showhidden -bool YES; killall Dock

# Full path in Finder
defaults write com.apple.finder _FXShowPosixPathInTitle -bool YES; killall Finder

# Disable Dashboard
defaults write com.apple.dashboard mcx-disabled -bool YES

# Disable spaces animation
defaults write com.apple.dock expose-animation-duration 0; killall Dock

# Disable rubber band effect
defaults write -g NSScrollViewRubberbanding -int 0

# Disable window opening animations
defaults write NSGlobalDomain NSAutomaticWindowAnimationsEnabled -bool NO
