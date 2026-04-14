# Homebrew formula for Zread
# Tap: codegeex/homebrew-zread_cli
#
# Template variables (replaced at release time):
#   0.2.7             - release version, e.g. 1.2.3
#   6554b99a798ffbfcc763d94045f68a8eaf3156c702da26b5112a607c10eb9238 - SHA-256 of zread-darwin-x86_64
#   a09544793d57bafd039d6891ce3ce5df3a98a8241e35ea04e5cc9db26b2709cc - SHA-256 of zread-darwin-arm64
#   cab8e532d9f581b54f99311d65262af84204de90dada53b8664aec2d5c9e451b  - SHA-256 of zread-linux-x86_64
#   4af82fbf88109ef0f9af026abd8447ccf70eb7d1f3e5a822cf6ce056655e880a  - SHA-256 of zread-linux-aarch64

class Zread < Formula
  desc "Zread turns your local codebase into readable docs"
  homepage "https://zread.ai"
  version "0.2.7"
  license :cannot_represent

  on_macos do
    on_intel do
      url "https://github.com/ZreadAI/zread_cli/releases/download/v0.2.7/zread-darwin-x86_64"
      sha256 "6554b99a798ffbfcc763d94045f68a8eaf3156c702da26b5112a607c10eb9238"
    end

    on_arm do
      url "https://github.com/ZreadAI/zread_cli/releases/download/v0.2.7/zread-darwin-arm64"
      sha256 "a09544793d57bafd039d6891ce3ce5df3a98a8241e35ea04e5cc9db26b2709cc"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/ZreadAI/zread_cli/releases/download/v0.2.7/zread-linux-x86_64"
      sha256 "cab8e532d9f581b54f99311d65262af84204de90dada53b8664aec2d5c9e451b"
    end

    on_arm do
      url "https://github.com/ZreadAI/zread_cli/releases/download/v0.2.7/zread-linux-aarch64"
      sha256 "4af82fbf88109ef0f9af026abd8447ccf70eb7d1f3e5a822cf6ce056655e880a"
    end
  end

  def install
    binary = Dir["zread-darwin-*", "zread-linux-*"].first
    bin.install binary => "zread"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/zread version")
  end
end
