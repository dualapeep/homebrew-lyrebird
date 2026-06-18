cask "lyrebird" do
  version "0.1.30"
  sha256 "6c86707590832f66f8aba5f9679a4e85bfcd7e81cfcb3c52a521b5e24d79bbf7"

  url "https://d21pmv6rhp0qg2.cloudfront.net/downloads/Lyrebird-#{version}-arm64.dmg"
  name "Lyrebird"
  desc "Superhuman-style inbox for triaging LinkedIn DMs"
  homepage "https://github.com/dualapeep/Lyrebird"

  depends_on arch: :arm64

  app "Lyrebird.app"

  postflight do
    system_command "/usr/bin/xattr", args: ["-cr", "#{appdir}/Lyrebird.app"]
  end
end
