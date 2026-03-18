class Calx < Formula
  desc "Native macOS Calendar CLI built on EventKit"
  homepage "https://github.com/etak64n/calx"
  url "https://github.com/etak64n/calx/releases/download/v0.1.0/calx-v0.1.0-macos-universal.tar.gz"
  sha256 "5aacabd0c372e472611e6c5d43a66f5446785be5129251d0d180810e4450f8a9"
  license "MIT"
  version "0.1.0"

  depends_on :macos

  def install
    bin.install "calx"

    generate_completions_from_executable(bin/"calx", "completions")
  end

  test do
    assert_match "calx", shell_output("#{bin}/calx --version")
  end
end
