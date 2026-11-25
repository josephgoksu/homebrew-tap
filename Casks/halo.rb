cask "halo" do
  version "1.0.4"
  sha256 "5bd2bdbac036b36d7195f5c9739eb250d8b97ec981142d9d543034078c66229c"

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
