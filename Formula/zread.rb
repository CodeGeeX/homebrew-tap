# Homebrew formula for Zread
# Tap: codegeex/homebrew-zread_cli
#
# Template variables (replaced at release time):
#   0.2.8             - release version, e.g. 1.2.3
#   e9e11221b164bf14f3ec4fb328d7f7dcf402c713e1a6062ed5dc09723a06881d - SHA-256 of zread-darwin-x86_64
#   16008d5dfb4ebc00c2169cdd314a124d52afeff5d0ff2a6a75f1cee9aee6c082 - SHA-256 of zread-darwin-arm64
#   6dbc8a5fa24a6a35cd4441f80c30e2dbc1b6643e1aca3a0bd96759dc244b9e2d  - SHA-256 of zread-linux-x86_64
#   3503311fd672b48cf46f63302d10e851adced6fb24754fb462620460d396ca7a  - SHA-256 of zread-linux-aarch64

class Zread < Formula
  desc "Zread turns your local codebase into readable docs"
  homepage "https://zread.ai"
  version "0.2.8"
  license :cannot_represent

  on_macos do
    on_intel do
      url "https://github.com/ZreadAI/zread_cli/releases/download/v0.2.8/zread-darwin-x86_64"
      sha256 "e9e11221b164bf14f3ec4fb328d7f7dcf402c713e1a6062ed5dc09723a06881d"
    end

    on_arm do
      url "https://github.com/ZreadAI/zread_cli/releases/download/v0.2.8/zread-darwin-arm64"
      sha256 "16008d5dfb4ebc00c2169cdd314a124d52afeff5d0ff2a6a75f1cee9aee6c082"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/ZreadAI/zread_cli/releases/download/v0.2.8/zread-linux-x86_64"
      sha256 "6dbc8a5fa24a6a35cd4441f80c30e2dbc1b6643e1aca3a0bd96759dc244b9e2d"
    end

    on_arm do
      url "https://github.com/ZreadAI/zread_cli/releases/download/v0.2.8/zread-linux-aarch64"
      sha256 "3503311fd672b48cf46f63302d10e851adced6fb24754fb462620460d396ca7a"
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
