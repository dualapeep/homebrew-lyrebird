cask "lyrebird" do
  arch arm: "arm64", intel: "x64"

  version "0.1.40"
  on_arm do
    sha256 "a6ca43fc6519831c3fc050aa0cfc8d5406edbba3cf02c4d01ea2281e2d806338"
  end
  on_intel do
    sha256 "130d32aab2d19f9d0ac9da7e92407ff90acbacd88f72f0f37bc744165a970315"
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
