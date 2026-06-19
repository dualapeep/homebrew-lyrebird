cask "lyrebird" do
  arch arm: "arm64", intel: "x64"

  version "0.1.42"
  on_arm do
    sha256 "fd0d6ad55876cbd21ab50289ecfebf76002734d9a759ef82d57956d3da5f9c24"
  end
  on_intel do
    sha256 "b09dfeb2be55d1528741ef42a8e83e85a3bdd27af4bb3d537eb71e14ac0fd7c7"
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
