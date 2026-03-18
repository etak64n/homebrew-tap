class Calx < Formula
  desc "Native macOS Calendar CLI built on EventKit"
  homepage "https://github.com/etak64n/calx"
  url "https://github.com/etak64n/calx/releases/download/v0.5.0/calx-v0.5.0-macos-universal.tar.gz"
  sha256 "a4df6b01057ed0d8026d83402a42534bb3c7968b0a60110fb561c0d67b218c6f"
  license "MIT"
  version "0.5.0"

  depends_on :macos

  def install
    bin.install "calx"

    generate_completions_from_executable(bin/"calx", "completions")
  end

  test do
    assert_match "calx", shell_output("#{bin}/calx --version")
  end
end
