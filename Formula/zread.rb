# Homebrew formula for Zread
# Tap: codegeex/homebrew-zread_cli
#
# Template variables (replaced at release time):
#   0.1.5             - release version, e.g. 1.2.3
#   6ab639617691bebb86d92176137be978fd2b301d27eeba5f878abb9b51336792 - SHA-256 of zread-darwin-x86_64
#   eb96677f6d0cc550dd0bfe5298dcf7c36c8bd46e8c88aa2493bb157dc705f9aa - SHA-256 of zread-darwin-arm64
#   f9a544ecf4bb373462b9ee1a064785970f151d547f6378690debf08c55a6ce99  - SHA-256 of zread-linux-x86_64
#   70855b0c35a41a79fa3a5a3c0731b3424a991a76f6b8160dff8c344717f49944  - SHA-256 of zread-linux-aarch64

class Zread < Formula
  desc "Zread turns your local codebase into readable docs"
  homepage "https://zread.ai"
  version "0.1.5"
  license :cannot_represent

  on_macos do
    on_intel do
      url "https://github.com/codegeex/zread_cli/releases/download/v0.1.5/zread-darwin-x86_64"
      sha256 "6ab639617691bebb86d92176137be978fd2b301d27eeba5f878abb9b51336792"
    end

    on_arm do
      url "https://github.com/codegeex/zread_cli/releases/download/v0.1.5/zread-darwin-arm64"
      sha256 "eb96677f6d0cc550dd0bfe5298dcf7c36c8bd46e8c88aa2493bb157dc705f9aa"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/codegeex/zread_cli/releases/download/v0.1.5/zread-linux-x86_64"
      sha256 "f9a544ecf4bb373462b9ee1a064785970f151d547f6378690debf08c55a6ce99"
    end

    on_arm do
      url "https://github.com/codegeex/zread_cli/releases/download/v0.1.5/zread-linux-aarch64"
      sha256 "70855b0c35a41a79fa3a5a3c0731b3424a991a76f6b8160dff8c344717f49944"
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
