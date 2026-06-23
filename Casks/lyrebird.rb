cask "lyrebird" do
  arch arm: "arm64", intel: "x64"

  version "0.1.47"
  on_arm do
    sha256 "39c1e58a9cf5112d894d7bdca5ef4319004e93e23a29bc18cf32e05a8fc44975"
  end
  on_intel do
    sha256 "77301173409922fd39668cf9876b6581bd0267960098f84a50cd2c36b6536571"
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
