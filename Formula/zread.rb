# Homebrew formula for Zread
# Tap: codegeex/homebrew-zread_cli
#
# Template variables (replaced at release time):
#   0.1.8             - release version, e.g. 1.2.3
#   f6436665ffa2393032c0027003a240db9dd7744f2a287fe130cfd907c8911215 - SHA-256 of zread-darwin-x86_64
#   a325b348c37e7b46e0693f9a9f2b40bfa3ad646d084cbfea5a5c9225ab949cee - SHA-256 of zread-darwin-arm64
#   4e61cf68c48f562ea567db1f4853ce8bdfa89b850942000c6b8ef43d1048ae51  - SHA-256 of zread-linux-x86_64
#   f8cfda122fb5832b1b3904c82786a749ce33fd16286eb29d0764bb60ba4f32e1  - SHA-256 of zread-linux-aarch64

class Zread < Formula
  desc "Zread turns your local codebase into readable docs"
  homepage "https://zread.ai"
  version "0.1.8"
  license :cannot_represent

  on_macos do
    on_intel do
      url "https://github.com/codegeex/zread_cli/releases/download/v0.1.8/zread-darwin-x86_64"
      sha256 "f6436665ffa2393032c0027003a240db9dd7744f2a287fe130cfd907c8911215"
    end

    on_arm do
      url "https://github.com/codegeex/zread_cli/releases/download/v0.1.8/zread-darwin-arm64"
      sha256 "a325b348c37e7b46e0693f9a9f2b40bfa3ad646d084cbfea5a5c9225ab949cee"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/codegeex/zread_cli/releases/download/v0.1.8/zread-linux-x86_64"
      sha256 "4e61cf68c48f562ea567db1f4853ce8bdfa89b850942000c6b8ef43d1048ae51"
    end

    on_arm do
      url "https://github.com/codegeex/zread_cli/releases/download/v0.1.8/zread-linux-aarch64"
      sha256 "f8cfda122fb5832b1b3904c82786a749ce33fd16286eb29d0764bb60ba4f32e1"
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
