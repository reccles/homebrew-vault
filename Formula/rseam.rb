class Rseam < Formula
  desc "Unofficial Rust CLI for the Seam API"
  homepage "https://github.com/reccles/rseam"
  url "https://github.com/reccles/rseam.git",
      tag: "v0.1.0",
      revision: "3fb84ec54846d126e5a7a2ec5810661276a6880b"
  version "0.1.0"
  license "MIT"

  depends_on "rust" => :build

  def install
    system "cargo", "install", "--locked", "--root", prefix, "--path", "."
  end

  test do
    system bin/"rseam", "--help"
  end
end
