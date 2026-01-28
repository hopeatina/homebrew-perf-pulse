class PerfPulse < Formula
  desc "The Activity Monitor replacement for developers"
  homepage "https://perf-pulse.com"
  version "1.3.1"
  license "MIT"

  if Hardware::CPU.arm?
    url "https://perf-pulse.com/releases/v1.3.1/perf-pulse-1.3.1-darwin-arm64.tar.gz"
    sha256 "9cc188bd662b962dfe694bd479119b06956a8e5df344415c5bb94316cccfab1a"
  else
    url "https://perf-pulse.com/releases/v1.3.1/perf-pulse-1.3.1-darwin-x86_64.tar.gz"
    sha256 "e1e7790cab753390d3da78cf5398a50d124481b7619b803aa4534cba393a2773"
  end

  def install
    bin.install "perf-pulse"
  end

  test do
    assert_match "perf-pulse", shell_output("#{bin}/perf-pulse --version")
  end
end
