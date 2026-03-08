class Rseam < Formula
  desc "Unofficial Rust CLI for the Seam API"
  homepage "https://github.com/reccles/rseam"
  url "https://github.com/reccles/rseam.git",
      tag: "v0.3.0",
      revision: "ff04d4043d7b5aecb6485f470b2d0673690db8be"
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
