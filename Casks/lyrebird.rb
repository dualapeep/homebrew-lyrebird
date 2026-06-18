cask "lyrebird" do
  version "0.1.29"
  sha256 "6d4ecdfda86b91b08bfd4cd829d4edb509226f7c0d3216f3622e306d45002130"

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
