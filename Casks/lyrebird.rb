cask "lyrebird" do
  arch arm: "arm64", intel: "x64"

  version "0.1.48"
  on_arm do
    sha256 "88dc6341a49c0961a76416d805e5ede7ab2bc2795e11d31af0c16e4f0d24fdda"
  end
  on_intel do
    sha256 "b5632ed8c9cf40a7ab7892662a478ec7f5a18d98151d0ac250b0b5b0489fbb6e"
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
