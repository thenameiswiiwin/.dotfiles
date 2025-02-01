#!/usr/bin/env bash
# osx.sh - macOS customization script

echo "[INFO] Starting macOS Customization..."

# Request sudo
sudo -v
while true; do
  sudo -n true
  sleep 60
  kill -0 "$$" || exit
done 2>/dev/null &

# General UI/UX
defaults write com.apple.universalaccess reduceTransparency -bool true
defaults write NSGlobalDomain AppleShowScrollBars -string "Always"
defaults write NSGlobalDomain NSAutomaticQuoteSubstitutionEnabled -bool false
defaults write NSGlobalDomain NSAutomaticDashSubstitutionEnabled -bool false

# SSD Tweaks
sudo pmset -a hibernatemode 0
sudo pmset -a sms 0

# Trackpad & Keyboard
defaults write com.apple.driver.AppleBluetoothMultitouch.trackpad Clicking -bool true
defaults write NSGlobalDomain com.apple.swipescrolldirection -bool false
defaults write NSGlobalDomain AppleKeyboardUIMode -int 3
defaults write NSGlobalDomain ApplePressAndHoldEnabled -bool false
defaults write NSGlobalDomain KeyRepeat -int 1
defaults write NSGlobalDomain InitialKeyRepeat -int 15

# Finder
defaults write com.apple.finder AppleShowAllFiles -bool true
defaults write NSGlobalDomain AppleShowAllExtensions -bool true
chflags nohidden ~/Library

# Dock
defaults write com.apple.dock tilesize -int 48
defaults write com.apple.dock autohide -bool true

# Safari
defaults write com.apple.Safari AutoOpenSafeDownloads -bool false

# Kill affected apps
for app in "Activity Monitor" "Dock" "Finder" "Safari" "SystemUIServer"; do
  killall "${app}" &>/dev/null
done

echo "[INFO] Customization complete. Some changes may require a restart."
