cask "janus" do
  version "0.4.0"
  sha256 "8831b789158111c47bfc433f491d1d8334cff6e3d419db920285db0e256e4280"

  desc "Plain-text issue tracking CLI with Markdown files and remote sync"
  homepage "https://github.com/divmain/janus"
  
  # URL will be dynamically updated by automation
  url "https://github.com/divmain/homebrew-janus/releases/download/v0.4.0/janus-aarch64-apple-darwin.tar.gz"
    
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
