class PerfPulse < Formula
  desc "The Activity Monitor replacement for developers"
  homepage "https://perf-pulse.com"
  version "1.5.2"
  license "MIT"

  if Hardware::CPU.arm?
    url "https://perf-pulse.com/releases/v1.5.2/perf-pulse-1.5.2-darwin-arm64.tar.gz"
    sha256 "0dc208a146027c3fc062a7f1414b3c2582b8247666107701404fc3c81ed96ed0"
  else
    url "https://perf-pulse.com/releases/v1.5.2/perf-pulse-1.5.2-darwin-x86_64.tar.gz"
    sha256 "54c1daf7d58336cb6af132c7e74d1b73c8fa5ba4e14ddf8ae5285767c7b5c7dc"
  end

  def install
    bin.install "perf-pulse"
  end

  test do
    assert_match "perf-pulse", shell_output("#{bin}/perf-pulse --version")
  end
end
