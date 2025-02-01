#!/usr/bin/env bash
# dock.sh - Configure the Dock (macOS) using dockutil

echo "[INFO] Setting defaults for Dock..."

if ! command -v dockutil &>/dev/null; then
  echo "[ERROR] dockutil not found. Install it first."
  exit 1
fi

dockutil --no-restart \
  --remove 'System Preferences' \
  --remove 'App Store' \
  --remove 'Maps' \
  --remove 'Photos' \
  --remove 'Messages' \
  --remove 'Contacts' \
  --remove 'Calendar' \
  --remove 'FaceTime' \
  --remove 'Feedback Assistant' \
  --remove 'Siri' \
  --remove 'Launchpad' \
  --remove 'Numbers' \
  --remove 'Pages' \
  --remove 'Keynote' \
  --remove 'iBooks' \
  --remove 'Mail' \
  --remove 'Music' \
  --remove 'Podcasts' \
  --remove 'Safari' \
  --remove 'TV' \
  --remove 'News' \
  --remove 'Notes' \
  --add /Applications/WezTerm.app \
  --add /Applications/Arc.app \
  &>/dev/null

killall cfprefsd &>/dev/null
killall -HUP Dock &>/dev/null

echo "Dock configuration complete."
