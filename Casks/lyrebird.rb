cask "lyrebird" do
  arch arm: "arm64", intel: "x64"

  version "0.1.41"
  on_arm do
    sha256 "876f66500335f5ee1a89d84347e3af64d3dcf96bfc5625813be2a181383a998a"
  end
  on_intel do
    sha256 "90bfd6c003da147ecf9fe37fff6d687dad8d3fd7bfb9d465a30c3423d6b545e7"
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
