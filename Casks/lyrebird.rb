cask "lyrebird" do
  version "0.1.22"
  sha256 "3a6c2e3f0f7c9955ec31f0b43a9aa3b3bf3d331d9f2ce0f46d5588e51817a28a"

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
