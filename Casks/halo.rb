cask "halo" do
  version "1.0.0"
  sha256 "1f7f7a255ddeccb5b92759f9cabf0e1459c987a5af5230fcaa303e63159992dd"

  url "https://github.com/josephgoksu/halo-releases/releases/download/v#{version}/Halo.zip",
      verified: "github.com/josephgoksu/halo-releases/"
  name "Halo"
  desc "Launcher, cleaner, screenshots and system monitor in the notch"
  homepage "https://halo.reaktif.io/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :sonoma"

  app "Halo.app"

  uninstall quit: "com.reaktif.halo"

  zap trash: [
    "~/Library/Application Support/Halo",
    "~/Library/Preferences/com.reaktif.halo.plist",
  ]
end
