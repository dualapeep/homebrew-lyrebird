cask "lyrebird" do
  arch arm: "arm64", intel: "x64"

  version "0.1.52"
  on_arm do
    sha256 "6910c67fd3a1dc7cef42475386d21a71c624d5edb3cef7f3ff7db27ff55c20db"
  end
  on_intel do
    sha256 "61b58a5eee18b1d06e2b1d3b2956f239ceb4deb52ecc0b8b3ab123bd05c074dc"
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
