cask "strain" do
  version "0.1.1"
  sha256 "15438664296e4d7efef1b957aab211606ed7cb7fec3683e1d304a75fd889e583"

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
