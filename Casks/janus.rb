cask "janus" do
  version "1.16.0"
  sha256 "706e73d7f8491e58cce605fb47ef7e84c63d29d715612c25f1279fa732714089"

  desc "Plain-text issue tracking CLI with Markdown files and remote sync"
  homepage "https://github.com/divmain/janus"
  
  # URL will be dynamically updated by automation
  url "https://github.com/divmain/homebrew-janus/releases/download/v1.16.0/janus-aarch64-apple-darwin.tar.gz"
    
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
