cask "lyrebird" do
  arch arm: "arm64", intel: "x64"

  version "0.1.56"
  on_arm do
    sha256 "1f2d1d051a4339d358aaa8f337b672760df609a5b3df3253860b35a9c1874067"
  end
  on_intel do
    sha256 "eb96b7f19fa89f4a4cb273b9789cf0b54e0468f8119eef238f93a796121baa48"
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
