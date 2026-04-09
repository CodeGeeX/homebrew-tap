# Homebrew formula for Zread
# Tap: codegeex/homebrew-zread_cli
#
# Template variables (replaced at release time):
#   0.2.5             - release version, e.g. 1.2.3
#   85e5fabce3f4bf675aa5e8040dd10c94aafa077ac24f3ec03d514f8c94bddb82 - SHA-256 of zread-darwin-x86_64
#   1764d1891002d1bd2df40bf8b1c77a6ab39a3ff4644b0e3c2974dc776c070e0b - SHA-256 of zread-darwin-arm64
#   8659697758b0c03977d01ca929f3ff3c93c8a487424205a55b3892fb8802919b  - SHA-256 of zread-linux-x86_64
#   e2ad664d53fdab4911fab9c633a7f2dac1d133e29ef50b459174a860203f6c1d  - SHA-256 of zread-linux-aarch64

class Zread < Formula
  desc "Zread turns your local codebase into readable docs"
  homepage "https://zread.ai"
  version "0.2.5"
  license :cannot_represent

  on_macos do
    on_intel do
      url "https://github.com/ZreadAI/zread_cli/releases/download/v0.2.5/zread-darwin-x86_64"
      sha256 "85e5fabce3f4bf675aa5e8040dd10c94aafa077ac24f3ec03d514f8c94bddb82"
    end

    on_arm do
      url "https://github.com/ZreadAI/zread_cli/releases/download/v0.2.5/zread-darwin-arm64"
      sha256 "1764d1891002d1bd2df40bf8b1c77a6ab39a3ff4644b0e3c2974dc776c070e0b"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/ZreadAI/zread_cli/releases/download/v0.2.5/zread-linux-x86_64"
      sha256 "8659697758b0c03977d01ca929f3ff3c93c8a487424205a55b3892fb8802919b"
    end

    on_arm do
      url "https://github.com/ZreadAI/zread_cli/releases/download/v0.2.5/zread-linux-aarch64"
      sha256 "e2ad664d53fdab4911fab9c633a7f2dac1d133e29ef50b459174a860203f6c1d"
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
