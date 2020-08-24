dockutil --remove all

dockutil --add '/System/Applications/App Store.app'
dockutil --add '/System/Applications/System Preferences.app'
dockutil --add '/Applications/iTerm.app'
dockutil --add '/System/Applications/Calendar.app'
dockutil --add '/Applications/Google Chrome.app'
dockutil --add '/Applications/Spotify.app'
dockutil --add '/Applications/Slack.app'
dockutil --add '/System/Applications/Preview.app'
dockutil --add '/Applications' --view grid --display stack
dockutil --add '~/Downloads' --view fan --display folder --allhomes
dockutil --add '~' --view grid --display stack
