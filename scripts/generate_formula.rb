#!/usr/bin/env ruby

# Helper script for generating initial formula if needed
# Usage: ruby scripts/generate_formula.rb <version> <sha256> [homepage]

require 'yaml'

# Add any additional helpers for formula generation if needed
def generate_binary_formula(version, sha256, homepage)
  template = <<~RUBY
    cask "janus" do
      version "#{version}"
      sha256 "#{sha256}"

      desc "Plain-text issue tracking CLI with Markdown files and remote sync"
      homepage "#{homepage}"
      
      url "https://github.com/divmain/janus/releases/download/v#{version}/janus-#{version}-aarch64-apple-darwin.tar.gz"
        
      depends_on macos: ">= :monterey"
      depends_on arch: :arm64
      
      binary "janus"

      uninstall delete: "\#{HOMEBREW_PREFIX}/bin/janus"

      livecheck do
        url :homepage
        strategy :github_latest
      end
    end
  RUBY
  
  template
end

# Command line interface
if __FILE__ == $0
  if ARGV.length < 2
    puts "Usage: #{$0} <version> <sha256> [homepage]"
    exit 1
  end
  
  version = ARGV[0]
  sha256 = ARGV[1]
  homepage = ARGV[2] || "https://github.com/divmain/janus"
  
  puts generate_binary_formula(version, sha256, homepage)
end
