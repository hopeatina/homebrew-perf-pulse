class PerfPulse < Formula
  desc "The Activity Monitor replacement for developers"
  homepage "https://perf-pulse.com"
  version "1.5.1"
  license "MIT"

  if Hardware::CPU.arm?
    url "https://perf-pulse.com/releases/v1.5.1/perf-pulse-1.5.1-darwin-arm64.tar.gz"
    sha256 "8201661dca7044a16bf7023eb95dd2c1ed83472f0a68352f2127f2dfeb0a8e15"
  else
    url "https://perf-pulse.com/releases/v1.5.1/perf-pulse-1.5.1-darwin-x86_64.tar.gz"
    sha256 "f1885d7136734fab0f10784709fe4993b06f34d597e08425ea90801d3d4cb401"
  end

  def install
    bin.install "perf-pulse"
  end

  test do
    assert_match "perf-pulse", shell_output("#{bin}/perf-pulse --version")
  end
end
