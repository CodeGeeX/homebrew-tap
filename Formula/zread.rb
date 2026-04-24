# Homebrew formula for Zread
# Tap: codegeex/homebrew-zread_cli
#
# Template variables (replaced at release time):
#   0.2.12             - release version, e.g. 1.2.3
#   d82a36c690eaf7535a3cab81313aac0b47d6f36475d5804be1d52c61eadda093 - SHA-256 of zread-darwin-x86_64
#   851fb7a14671e179490f643c46e783fd59c2681b57e941d834d532183cef8a52 - SHA-256 of zread-darwin-arm64
#   faf5ef7f2f8edc24d41b84fd838322882846f4bab10f1a9210de29cba2a53a10  - SHA-256 of zread-linux-x86_64
#   08a9d31486eee5902d05e811428599ac9c324dabc14c43b3cfaa948fea5ecf64  - SHA-256 of zread-linux-aarch64

class Zread < Formula
  desc "Zread turns your local codebase into readable docs"
  homepage "https://zread.ai"
  version "0.2.12"
  license :cannot_represent

  on_macos do
    on_intel do
      url "https://github.com/ZreadAI/zread_cli/releases/download/v0.2.12/zread-darwin-x86_64"
      sha256 "d82a36c690eaf7535a3cab81313aac0b47d6f36475d5804be1d52c61eadda093"
    end

    on_arm do
      url "https://github.com/ZreadAI/zread_cli/releases/download/v0.2.12/zread-darwin-arm64"
      sha256 "851fb7a14671e179490f643c46e783fd59c2681b57e941d834d532183cef8a52"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/ZreadAI/zread_cli/releases/download/v0.2.12/zread-linux-x86_64"
      sha256 "faf5ef7f2f8edc24d41b84fd838322882846f4bab10f1a9210de29cba2a53a10"
    end

    on_arm do
      url "https://github.com/ZreadAI/zread_cli/releases/download/v0.2.12/zread-linux-aarch64"
      sha256 "08a9d31486eee5902d05e811428599ac9c324dabc14c43b3cfaa948fea5ecf64"
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
