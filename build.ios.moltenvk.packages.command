sudo xcode-select --switch /Applications/Xcode.app
sudo xcodebuild -runFirstLaunch
sudo xcrun simctl runtime add "/Users/manja/Downloads/iOS_17.5_Simulator_Runtime.dmg"
./fetchDependencies --ios --iossim --maccat
make ios iossim maccat
