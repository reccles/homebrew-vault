# Written by fussycat's release workflow (scripts/homebrew-formula.sh):
# edit the script, not this file.
class Fussycat < Formula
  desc "AI agent that behaves like a Unix tool: task on stdin, answer on stdout"
  homepage "https://github.com/reccles/fussycat"
  version "0.1.1"
  license "MIT"

  on_macos do
    depends_on arch: :arm64
    on_arm do
      url "https://github.com/reccles/fussycat/releases/download/v0.1.1/fussycat-v0.1.1-aarch64-apple-darwin.tar.gz"
      sha256 "1c7238fff873687b85f8a6dfcfdd2030b6cf30b50c5db88ce329370ed3eb211d"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/reccles/fussycat/releases/download/v0.1.1/fussycat-v0.1.1-x86_64-unknown-linux-musl.tar.gz"
      sha256 "77d3e672718d024ac3f27de7bdffdce786ac3248795b57ddeac4309442e9cc05"
    end
    on_arm do
      url "https://github.com/reccles/fussycat/releases/download/v0.1.1/fussycat-v0.1.1-aarch64-unknown-linux-musl.tar.gz"
      sha256 "f5fcef33e960e0bb5518381c084959545fcdcf34cb5c104ffe6857618d30e309"
    end
  end

  def install
    bin.install "fussycat"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/fussycat --version")
  end
end
