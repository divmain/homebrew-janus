cask "janus" do
  version "1.16.1"
  sha256 "8b1ce1bfea10d0f3b29c9618859d1105d2a5dfe8047044585520dd145ff10c07"

  desc "Plain-text issue tracking CLI with Markdown files and remote sync"
  homepage "https://github.com/divmain/janus"
  
  # URL will be dynamically updated by automation
  url "https://github.com/divmain/homebrew-janus/releases/download/v1.16.1/janus-aarch64-apple-darwin.tar.gz"
    
  depends_on macos: ">= :monterey"
  depends_on arch: :arm64
  
  # Install binary to /opt/homebrew/bin
  binary "janus"

  uninstall delete: "#{HOMEBREW_PREFIX}/bin/janus"

  # Auto-update check using GitHub releases
  livecheck do
    url :homepage
    strategy :github_latest
  end
end
