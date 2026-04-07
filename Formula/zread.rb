# Homebrew formula for Zread
# Tap: codegeex/homebrew-zread_cli
#
# Template variables (replaced at release time):
#   0.2.3             - release version, e.g. 1.2.3
#   31b3ccf7bfb11e5f201bc173cf1b4cfe55ff2d32acec037f5ba94f9151ccae9d - SHA-256 of zread-darwin-x86_64
#   fbd6e4999f704c8ebb59e01849ba57fd35cb86862eb91e531f71e093970fa659 - SHA-256 of zread-darwin-arm64
#   a512c162fca4d43f94dca8e124e1856b5f897e07a301ed67f80140a4122a56ac  - SHA-256 of zread-linux-x86_64
#   3fd85b3cff1877ef08855bf7bad31bade71b2dd2647c151aea11d70e9f3e34df  - SHA-256 of zread-linux-aarch64

class Zread < Formula
  desc "Zread turns your local codebase into readable docs"
  homepage "https://zread.ai"
  version "0.2.3"
  license :cannot_represent

  on_macos do
    on_intel do
      url "https://github.com/codegeex/zread_cli/releases/download/v0.2.3/zread-darwin-x86_64"
      sha256 "31b3ccf7bfb11e5f201bc173cf1b4cfe55ff2d32acec037f5ba94f9151ccae9d"
    end

    on_arm do
      url "https://github.com/codegeex/zread_cli/releases/download/v0.2.3/zread-darwin-arm64"
      sha256 "fbd6e4999f704c8ebb59e01849ba57fd35cb86862eb91e531f71e093970fa659"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/codegeex/zread_cli/releases/download/v0.2.3/zread-linux-x86_64"
      sha256 "a512c162fca4d43f94dca8e124e1856b5f897e07a301ed67f80140a4122a56ac"
    end

    on_arm do
      url "https://github.com/codegeex/zread_cli/releases/download/v0.2.3/zread-linux-aarch64"
      sha256 "3fd85b3cff1877ef08855bf7bad31bade71b2dd2647c151aea11d70e9f3e34df"
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
