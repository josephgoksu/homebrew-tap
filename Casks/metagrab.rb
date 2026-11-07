cask "metagrab" do
  version "0.1.0"

  on_macos do
    on_intel do
      url "https://github.com/josephgoksu/metagrab/releases/download/v#{version}/metagrab_#{version}_darwin_amd64.tar.gz"
      sha256 "ecf1a21337c05005acd7336228a617fdded57169f5a920b2f3114548310a5578"
    end
    on_arm do
      url "https://github.com/josephgoksu/metagrab/releases/download/v#{version}/metagrab_#{version}_darwin_arm64.tar.gz"
      sha256 "c8258979d2ee0fcb04e389126b6c855fdab37929d98e1d0c121878fb929c1b39"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/josephgoksu/metagrab/releases/download/v#{version}/metagrab_#{version}_linux_amd64.tar.gz"
      sha256 "5bc68b46f1306d71efe951f6f05ebf530aee4d0a0cc40b966c83d7debf3239e0"
    end
    on_arm do
      url "https://github.com/josephgoksu/metagrab/releases/download/v#{version}/metagrab_#{version}_linux_arm64.tar.gz"
      sha256 "90e2c8d076b0926c01de79f01519ff1532a04b60eb880c7f92a878f20381eb9d"
    end
  end

  name "metagrab"
  desc "Fetch link-preview metadata (Open Graph, Twitter Cards, JSON-LD, oEmbed) from any URL"
  homepage "https://github.com/josephgoksu/metagrab"

  livecheck do
    url :url
    strategy :github_latest
  end

  binary "metagrab"

  # The binaries are not notarized; remove the quarantine flag so macOS
  # does not block the first run.
  postflight do
    if OS.mac?
      system_command "/usr/bin/xattr", args: ["-dr", "com.apple.quarantine", "#{staged_path}/metagrab"]
    end
  end
end
