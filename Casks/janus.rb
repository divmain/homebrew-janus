cask "janus" do
  version "1.1.0"
  sha256 "5f4d4406505e8c479e6cc42c3ed7e82554a9ecd1481b5b222aacb8e0e884a939"

  desc "Plain-text issue tracking CLI with Markdown files and remote sync"
  homepage "https://github.com/divmain/janus"
  
  # URL will be dynamically updated by automation
  url "https://github.com/divmain/homebrew-janus/releases/download/v1.1.0/janus-aarch64-apple-darwin.tar.gz"
    
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
