class Calx < Formula
  desc "Native macOS Calendar CLI built on EventKit"
  homepage "https://github.com/etak64n/calx"
  url "https://github.com/etak64n/calx/releases/download/v0.6.0/calx-v0.6.0-macos-universal.tar.gz"
  sha256 "7928cfe23af5194c32f8117ccc45ca3a5cf23ba4cb25947374fbf5e54951bca1"
  license "MIT"
  version "0.6.0"

  depends_on :macos

  def install
    bin.install "calx"

    generate_completions_from_executable(bin/"calx", "completions")
  end

  test do
    assert_match "calx", shell_output("#{bin}/calx --version")
  end
end
