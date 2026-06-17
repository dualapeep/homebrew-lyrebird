cask "lyrebird" do
  version "0.1.15"
  sha256 "74496f6b58ec39192d1902a42179717298ed0456065339d0d32e4dc57f69c4a1"

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
