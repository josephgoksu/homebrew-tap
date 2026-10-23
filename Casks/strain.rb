cask "strain" do
  version "0.1.0"
  sha256 "08774a8b407f38add3f2ff8447c8a7d311c8b616aae105633509dfaf524bc1a8"

  url "https://github.com/josephgoksu/strain/releases/download/v#{version}/Strain.zip"
  name "Strain"
  desc "Menu bar app that names what is straining your Mac"
  homepage "https://github.com/josephgoksu/strain"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :sonoma"

  app "Strain.app"

  uninstall quit: "com.josephgoksu.strain"

  zap trash: [
    "~/Library/Application Support/Strain",
    "~/Library/Preferences/com.josephgoksu.strain.plist",
  ]
end
