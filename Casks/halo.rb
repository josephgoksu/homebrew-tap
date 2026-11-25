cask "halo" do
  version "1.0.3"
  sha256 "de980961b74f2e6fc5233245d55f23effb30408cfa6e78e2c480f153fb059b41"

  url "https://github.com/josephgoksu/halo-releases/releases/download/v#{version}/Halo.zip"
  name "Halo"
  desc "Launcher, cleaner, screenshots and system monitor in the notch"
  homepage "https://halo.reaktif.io/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :sonoma

  app "Halo.app"

  uninstall quit: "com.reaktif.halo"

  zap trash: [
    "~/Library/Application Support/Halo",
    "~/Library/Preferences/com.reaktif.halo.plist",
  ]
end
