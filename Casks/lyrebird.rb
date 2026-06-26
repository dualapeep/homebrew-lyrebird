cask "lyrebird" do
  arch arm: "arm64", intel: "x64"

  version "0.1.55"
  on_arm do
    sha256 "f7a536da8e75278d389f68d1569c029c15654ffea1cf04c5076809df5c9ed7a8"
  end
  on_intel do
    sha256 "e6d6e4cddc00997ad0cba57d28a7d7ecba5699ccb0a46d775e91e5a41c4c09dd"
  end

  url "https://d21pmv6rhp0qg2.cloudfront.net/downloads/Lyrebird-#{version}-#{arch}.dmg"
  name "Lyrebird"
  desc "Superhuman-style inbox for triaging LinkedIn DMs"
  homepage "https://github.com/dualapeep/Lyrebird"

  # The app self-updates (electron-updater), so Homebrew installs once
  # and steps back rather than managing version upgrades.
  auto_updates true

  app "Lyrebird.app"

  postflight do
    system_command "/usr/bin/xattr", args: ["-cr", "#{appdir}/Lyrebird.app"]
  end
end
