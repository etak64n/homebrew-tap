class Calx < Formula
  desc "Native macOS Calendar CLI built on EventKit"
  homepage "https://github.com/etak64n/calx"
  url "https://github.com/etak64n/calx/releases/download/v0.2.0/calx-v0.2.0-macos-universal.tar.gz"
  sha256 "02ec61c3972dba67a82b9b8639669952923889b6b888de7d34ebe722e3d1072b"
  license "MIT"
  version "0.2.0"

  depends_on :macos

  def install
    bin.install "calx"

    generate_completions_from_executable(bin/"calx", "completions")
  end

  test do
    assert_match "calx", shell_output("#{bin}/calx --version")
  end
end
