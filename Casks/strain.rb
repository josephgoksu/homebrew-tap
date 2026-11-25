cask "strain" do
  version "0.1.2"
  sha256 "39364f3125caec7bdb5faaefa022f87a9757bb7615865c575997417aed65021d"

  url "https://github.com/josephgoksu/strain/releases/download/v#{version}/Strain.zip"
  name "Strain"
  desc "Menu bar app that names what is straining your Mac"
  homepage "https://github.com/josephgoksu/strain"

  # Strain became Halo, a paid app with its own cask; its downloads are no longer public.
  disable! date: "2026-11-25", because: "was renamed Halo: brew install --cask josephgoksu/tap/halo"

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
