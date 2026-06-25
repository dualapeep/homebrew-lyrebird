cask "lyrebird" do
  arch arm: "arm64", intel: "x64"

  version "0.1.50"
  on_arm do
    sha256 "e36bcdfc26dec97fa269ca0fa97afa00c5df961c1b0fb501cbd75c57f273feb1"
  end
  on_intel do
    sha256 "aed63824d6897328981f196c73fe24d10e71e84c8eacb9277c0ff8d6f9652617"
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
