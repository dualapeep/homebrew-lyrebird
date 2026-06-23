cask "lyrebird" do
  arch arm: "arm64", intel: "x64"

  version "0.1.49"
  on_arm do
    sha256 "a7e76252a5c2db64d0401322ceeff0096f04623c76d59ebcd935ab4e8e50509e"
  end
  on_intel do
    sha256 "7a96c5685ef23652952e87f87422b4481c0b2683f5299d4d05c9817b9d487331"
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
