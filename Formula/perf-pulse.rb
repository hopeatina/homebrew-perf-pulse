class PerfPulse < Formula
  desc "The Activity Monitor replacement for developers"
  homepage "https://perf-pulse.com"
  version "1.3.3"
  license "MIT"

  if Hardware::CPU.arm?
    url "https://perf-pulse.com/releases/v1.3.3/perf-pulse-1.3.3-darwin-arm64.tar.gz"
    sha256 "e9c0ca1b36acf49c6a7e4ec1f04da5c4b200d2e6aa67dab6d057d9f472105f03"
  else
    url "https://perf-pulse.com/releases/v1.3.3/perf-pulse-1.3.3-darwin-x86_64.tar.gz"
    sha256 "e56f0c10e6a5e0a103d428ea2a51c8892e97cbf8d85db250ac0d2b0427ca2d98"
  end

  def install
    bin.install "perf-pulse"
  end

  test do
    assert_match "perf-pulse", shell_output("#{bin}/perf-pulse --version")
  end
end
