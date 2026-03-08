class Rseam < Formula
  desc "Unofficial Rust CLI for the Seam API"
  homepage "https://github.com/reccles/rseam"
  url "https://github.com/reccles/rseam.git",
      tag: "v0.3.0",
      revision: "d9d1c3dd16d78d74aa0edc22b0d280291880aada"
  version "0.3.0"
  license "MIT"

  depends_on "rust" => :build

  def install
    system "cargo", "install", "--locked", "--root", prefix, "--path", "."
  end

  test do
    system bin/"rseam", "--help"
  end
end
