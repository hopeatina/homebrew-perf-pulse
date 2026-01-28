class PerfPulse < Formula
  desc "The Activity Monitor replacement for developers"
  homepage "https://perf-pulse.com"
  version "1.4.3"
  license "MIT"

  if Hardware::CPU.arm?
    url "https://perf-pulse.com/releases/v1.4.3/perf-pulse-1.4.3-darwin-arm64.tar.gz"
    sha256 "754de6aa31ecbcb807a7b04254b0d48632d159fd2437edae8432743329802d41"
  else
    url "https://perf-pulse.com/releases/v1.4.3/perf-pulse-1.4.3-darwin-x86_64.tar.gz"
    sha256 "0ee275ccd208b30ca6c45916e787ad0e5dd4c58effec550d4b30c6e805044d0b"
  end

  def install
    bin.install "perf-pulse"
  end

  test do
    assert_match "perf-pulse", shell_output("#{bin}/perf-pulse --version")
  end
end
