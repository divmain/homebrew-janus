cask "janus" do
  version "1.6.2"
  sha256 "e82ca8b557c5c47975af1e186a0dce6d5116a6dad6b368e9b8aa2366c536c4b0"

  desc "Plain-text issue tracking CLI with Markdown files and remote sync"
  homepage "https://github.com/divmain/janus"
  
  # URL will be dynamically updated by automation
  url "https://github.com/divmain/homebrew-janus/releases/download/v1.6.2/janus-aarch64-apple-darwin.tar.gz"
    
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
