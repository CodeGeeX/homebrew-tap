# Homebrew formula for Zread
# Tap: codegeex/homebrew-zread_cli
#
# Template variables (replaced at release time):
#   0.1.7             - release version, e.g. 1.2.3
#   cf676fcb0735e45a157bfe555cd5c583c5610b109a73d00292bb541422620426 - SHA-256 of zread-darwin-x86_64
#   145c00b25c5a537cc5a35ca9ba4002cdc9309fa4d8793f0919ba3f07327e336c - SHA-256 of zread-darwin-arm64
#   4414b30597ffeee680782e71e3215cac5f518017c848d4c27e85c045319303e7  - SHA-256 of zread-linux-x86_64
#   1d2080b20f91e211ec87762141eef7ea3123295726d355f069fc6cbef997e2e5  - SHA-256 of zread-linux-aarch64

class Zread < Formula
  desc "Zread turns your local codebase into readable docs"
  homepage "https://zread.ai"
  version "0.1.7"
  license :cannot_represent

  on_macos do
    on_intel do
      url "https://github.com/codegeex/zread_cli/releases/download/v0.1.7/zread-darwin-x86_64"
      sha256 "cf676fcb0735e45a157bfe555cd5c583c5610b109a73d00292bb541422620426"
    end

    on_arm do
      url "https://github.com/codegeex/zread_cli/releases/download/v0.1.7/zread-darwin-arm64"
      sha256 "145c00b25c5a537cc5a35ca9ba4002cdc9309fa4d8793f0919ba3f07327e336c"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/codegeex/zread_cli/releases/download/v0.1.7/zread-linux-x86_64"
      sha256 "4414b30597ffeee680782e71e3215cac5f518017c848d4c27e85c045319303e7"
    end

    on_arm do
      url "https://github.com/codegeex/zread_cli/releases/download/v0.1.7/zread-linux-aarch64"
      sha256 "1d2080b20f91e211ec87762141eef7ea3123295726d355f069fc6cbef997e2e5"
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
