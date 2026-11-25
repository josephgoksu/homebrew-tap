cask "halo" do
  version "1.0.2"
  sha256 "2cdddb9fa0082345832b1f4d4b9d02b21c18353e1cb712ac245699fe42239b4b"

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
