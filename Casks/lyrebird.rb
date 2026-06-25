cask "lyrebird" do
  arch arm: "arm64", intel: "x64"

  version "0.1.51"
  on_arm do
    sha256 "d445985a2bb35d6e9f891b1b268103d1a2ba848ba1b3aadd83458ff5c8833183"
  end
  on_intel do
    sha256 "5c7361cb9a584d5e990484f6b88a0be74dcce3f24e7be96727c2c82ecc3198cf"
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
