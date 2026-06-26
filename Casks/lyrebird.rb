cask "lyrebird" do
  arch arm: "arm64", intel: "x64"

  version "0.1.57"
  on_arm do
    sha256 "6be31166697b1af5a51fbd490c7058e0b0c7e30dee6197eee15e22e03a7c3629"
  end
  on_intel do
    sha256 "086f1dbe5fde0c588895c442e47450880e8ab0a53201c34ab739fe6b6d6711d3"
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
