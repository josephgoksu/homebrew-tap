cask "halo" do
  version "1.0.1"
  sha256 "934ffdafee41262d9f713bf266d7aff237e7714f2ac9ceded8fac9297339f51a"

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
