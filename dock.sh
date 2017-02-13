dockutil --remove all

dockutil --add '/Applications/App Store.app'
dockutil --add '/Applications/System Preferences.app'
dockutil --add '/Applications/Slack.app'
dockutil --add '/Applications/iTerm.app'
dockutil --add '/Applications/Safari.app'
dockutil --add '/Applications/Google Chrome.app'
dockutil --add '/Applications/Spotify.app'
dockutil --add '/Applications/Calendar.app'
dockutil --add '/Applications' --view grid --display stack
dockutil --add '~/Downloads' --view fan --display folder --allhomes
dockutil --add '~' --view grid --display stack
