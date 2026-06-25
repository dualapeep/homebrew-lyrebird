cask "lyrebird" do
  arch arm: "arm64", intel: "x64"

  version "0.1.53"
  on_arm do
    sha256 "dc2c5cd968e8a5206e268df0f01ec35236502fcab24a5d9eda2eaf69bd8356e3"
  end
  on_intel do
    sha256 "1824cd06b91be05858f10282e449ab12dfaf97f98732ef539323e5c150af60c9"
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
