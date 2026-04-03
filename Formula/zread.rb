# Homebrew formula for Zread
# Tap: codegeex/homebrew-zread_cli
#
# Template variables (replaced at release time):
#   0.2.2             - release version, e.g. 1.2.3
#   06443348271bde2515546679c0b11d8a77e74133ba3122d0ceec2f9fa12dc037 - SHA-256 of zread-darwin-x86_64
#   f4aaf0846f19e4c22389811a301ab47696d4eee5491e7a535d36a952b6d04a7c - SHA-256 of zread-darwin-arm64
#   2a2726980cd3979a7dd929a30bddf3cff07ae1c185c240052ae5693ca966a05e  - SHA-256 of zread-linux-x86_64
#   8ba1d9283e6a20361257fd70b906081fe53c33c6738f932bcedaae8b74677858  - SHA-256 of zread-linux-aarch64

class Zread < Formula
  desc "Zread turns your local codebase into readable docs"
  homepage "https://zread.ai"
  version "0.2.2"
  license :cannot_represent

  on_macos do
    on_intel do
      url "https://github.com/codegeex/zread_cli/releases/download/v0.2.2/zread-darwin-x86_64"
      sha256 "06443348271bde2515546679c0b11d8a77e74133ba3122d0ceec2f9fa12dc037"
    end

    on_arm do
      url "https://github.com/codegeex/zread_cli/releases/download/v0.2.2/zread-darwin-arm64"
      sha256 "f4aaf0846f19e4c22389811a301ab47696d4eee5491e7a535d36a952b6d04a7c"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/codegeex/zread_cli/releases/download/v0.2.2/zread-linux-x86_64"
      sha256 "2a2726980cd3979a7dd929a30bddf3cff07ae1c185c240052ae5693ca966a05e"
    end

    on_arm do
      url "https://github.com/codegeex/zread_cli/releases/download/v0.2.2/zread-linux-aarch64"
      sha256 "8ba1d9283e6a20361257fd70b906081fe53c33c6738f932bcedaae8b74677858"
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
