class Rseam < Formula
  desc "Unofficial Rust CLI for the Seam API"
  homepage "https://github.com/reccles/rseam"
  url "https://github.com/reccles/rseam.git",
      tag: "v0.2.0",
      revision: "21ede97001b2d00d2e5694c5f2eacf387bc8a07e"
  version "0.2.0"
  license "MIT"

  depends_on "rust" => :build

  def install
    system "cargo", "install", "--locked", "--root", prefix, "--path", "."
  end

  test do
    system bin/"rseam", "--help"
  end
end
