cask "lyrebird" do
  version "0.1.33"
  sha256 "27d6d52ca1473fe66e8a94da9cbf9dff44040f6c1b8e51129cfcd033a3775dcf"

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
