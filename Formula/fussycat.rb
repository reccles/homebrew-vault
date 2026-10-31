# Written by fussycat's release workflow (scripts/homebrew-formula.sh):
# edit the script, not this file.
class Fussycat < Formula
  desc "AI agent that behaves like a Unix tool: task on stdin, answer on stdout"
  homepage "https://github.com/reccles/fussycat"
  version "0.1.0"
  license "MIT"

  on_macos do
    depends_on arch: :arm64
    on_arm do
      url "https://github.com/reccles/fussycat/releases/download/v0.1.0/fussycat-v0.1.0-aarch64-apple-darwin.tar.gz"
      sha256 "eb5cf0f129178745b5c167eb974dbeba8c1ac78f935b879b9b3fe9632d24c0ad"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/reccles/fussycat/releases/download/v0.1.0/fussycat-v0.1.0-x86_64-unknown-linux-musl.tar.gz"
      sha256 "48263cfcba4775ca064734019b540412a26da0ce012436732f9306dc2e3f83a2"
    end
    on_arm do
      url "https://github.com/reccles/fussycat/releases/download/v0.1.0/fussycat-v0.1.0-aarch64-unknown-linux-musl.tar.gz"
      sha256 "ea1a987e05824adde14c8f35cb75ccf34c4038c8cd6df433791c2cedc9aa7791"
    end
  end

  def install
    bin.install "fussycat"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/fussycat --version")
  end
end
