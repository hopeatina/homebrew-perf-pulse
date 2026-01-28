class PerfPulse < Formula
  desc "The Activity Monitor replacement for developers"
  homepage "https://perf-pulse.com"
  version "1.4.2"
  license "MIT"

  if Hardware::CPU.arm?
    url "https://perf-pulse.com/releases/v1.4.2/perf-pulse-1.4.2-darwin-arm64.tar.gz"
    sha256 "3de20670fe152de2651f3df275ff78316dd5934cc57b2817deb61d31bcf45987"
  else
    url "https://perf-pulse.com/releases/v1.4.2/perf-pulse-1.4.2-darwin-x86_64.tar.gz"
    sha256 "fe5f5d17d932519573e258cb82ca7b56394c00f86367ba3c7795831e120b6386"
  end

  def install
    bin.install "perf-pulse"
  end

  test do
    assert_match "perf-pulse", shell_output("#{bin}/perf-pulse --version")
  end
end
