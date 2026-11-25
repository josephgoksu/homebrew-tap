cask "halo" do
  version "1.0.5"
  sha256 "feb3b6ff31b72fbf3fad5ebb51d064b7677a1e6dfad31a4476515670a7c695dc"

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
