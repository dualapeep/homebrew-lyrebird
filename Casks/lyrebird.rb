cask "lyrebird" do
  arch arm: "arm64", intel: "x64"

  version "0.1.54"
  on_arm do
    sha256 "b7b9b99a0fb483ae6558f3f32fbceab75a2d4dea97d6b3064e4f38392dcb6ddd"
  end
  on_intel do
    sha256 "d8f776f287bdc523655d7edd2b82fe1b10f4e32b1d279fc5ee0f848e81201bbe"
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
