cask "lyrebird" do
  arch arm: "arm64", intel: "x64"

  version "0.1.58"
  on_arm do
    sha256 "e71369274931faa0fde87241cbde6a1cefc73ead4d1d1ceb2cedf50c7b6e1261"
  end
  on_intel do
    sha256 "4d409a100bb4d1f55f748ef41cd913c80592392c5b0a79ac10e4dba526671a81"
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
