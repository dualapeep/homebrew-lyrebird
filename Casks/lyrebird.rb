cask "lyrebird" do
  arch arm: "arm64", intel: "x64"

  version "0.1.43"
  on_arm do
    sha256 "c0611f8273ae921cc72bde164540364ffbb644aa7b5e9e6b34b37deafd17bfc5"
  end
  on_intel do
    sha256 "476b2b9d63a9da8c15b4ee78d04a4b9a2ca671ed20088481d38ad0f6882e218a"
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
