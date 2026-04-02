# Homebrew formula for Zread
# Tap: codegeex/homebrew-zread_cli
#
# Template variables (replaced at release time):
#   0.2.0             - release version, e.g. 1.2.3
#   3d1bf816fc2765693334d4cae6b33ae6ef1db280efc06eba36e77b3d132ac5dd - SHA-256 of zread-darwin-x86_64
#   14856d039c2fe28764db771fd8e9e624570ef911903b9e441e0a096e49cb1b30 - SHA-256 of zread-darwin-arm64
#   9e84a7f2f3ac745ca10d85559cad753ca7e46583e5894922930bcde370879b5d  - SHA-256 of zread-linux-x86_64
#   1c42155aa168381647179aa41b1d564634cb377ebc872b0b0d9fe8a5f8318b4d  - SHA-256 of zread-linux-aarch64

class Zread < Formula
  desc "Zread turns your local codebase into readable docs"
  homepage "https://zread.ai"
  version "0.2.0"
  license :cannot_represent

  on_macos do
    on_intel do
      url "https://github.com/codegeex/zread_cli/releases/download/v0.2.0/zread-darwin-x86_64"
      sha256 "3d1bf816fc2765693334d4cae6b33ae6ef1db280efc06eba36e77b3d132ac5dd"
    end

    on_arm do
      url "https://github.com/codegeex/zread_cli/releases/download/v0.2.0/zread-darwin-arm64"
      sha256 "14856d039c2fe28764db771fd8e9e624570ef911903b9e441e0a096e49cb1b30"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/codegeex/zread_cli/releases/download/v0.2.0/zread-linux-x86_64"
      sha256 "9e84a7f2f3ac745ca10d85559cad753ca7e46583e5894922930bcde370879b5d"
    end

    on_arm do
      url "https://github.com/codegeex/zread_cli/releases/download/v0.2.0/zread-linux-aarch64"
      sha256 "1c42155aa168381647179aa41b1d564634cb377ebc872b0b0d9fe8a5f8318b4d"
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
