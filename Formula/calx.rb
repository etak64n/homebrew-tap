class Calx < Formula
  desc "Native macOS Calendar CLI built on EventKit"
  homepage "https://github.com/etak64n/calx"
  url "https://github.com/etak64n/calx/releases/download/v0.4.0/calx-v0.4.0-macos-universal.tar.gz"
  sha256 "ed7fdb5431b21ca82d21b5cc113120a1ee11171abff66f954c15390593dc4510"
  license "MIT"
  version "0.4.0"

  depends_on :macos

  def install
    bin.install "calx"

    generate_completions_from_executable(bin/"calx", "completions")
  end

  test do
    assert_match "calx", shell_output("#{bin}/calx --version")
  end
end
