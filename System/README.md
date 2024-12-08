強制終了
```sh
Cmd+Option+Esc
```

シェルの再起動
```sh
exec $SHELL -l
```

Finder関連
```sh
defaults write com.apple.desktopservices DSDontWriteNetworkStores -bool true

defaults write -g AppleShowAllExtensions -bool true

defaults write com.apple.finder ShowPathbar -bool true
```

Dock関連
```sh
defaults write com.apple.dock orientation -string left

defaults write com.apple.dock autohide -bool true

defaults write com.apple.dock launchanim -bool false

defaults write com.apple.dock tilesize -int 40

defaults write com.apple.dock largesize -int 53

defaults write com.apple.dock show-recents -bool false

defaults write com.apple.dock springboard-columns -int 7

defaults write com.apple.dock springboard-rows -int 7

defaults write com.apple.dock ResetLaunchPad -bool true
```

Clock関連
```sh
defaults write com.apple.menuextra.clock Show24Hour -bool true

defaults write com.apple.menuextra.clock ShowDayOfWeek -bool true

defaults write com.apple.menuextra.clock ShowSeconds -bool true
```

動作関連
```sh
defaults write -g KeyRepeat -int 2

defaults write -g InitialKeyRepeat -int 15

defaults write -g com.apple.trackpad.scaling -int 2.5
```

スクリーンショット
```sh
defaults write com.apple.screencapture location ~/Screenshot/
```

ゴミ箱
```sh
defaults write com.apple.finder WarnOnEmptyTrash -bool false
```

自動大文字化機能
```sh
defaults write NSGlobalDomain NSAutomaticCapitalizationEnabled -bool false
```

再起動時の音量
```sh
sudo nvram SystemAudioVolume=%00
```

プロパティリスト
```sh
defaults read > defaults.plist
```
