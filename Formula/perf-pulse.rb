class PerfPulse < Formula
  desc "The Activity Monitor replacement for developers"
  homepage "https://perf-pulse.com"
  version "1.5.3"
  license "MIT"

  if Hardware::CPU.arm?
    url "https://perf-pulse.com/releases/v1.5.3/perf-pulse-1.5.3-darwin-arm64.tar.gz"
    sha256 "f2fcf84f80c2def6aadb2df73864bf81a69e5c230d8f6ec7d298f9acbebd814d"
  else
    url "https://perf-pulse.com/releases/v1.5.3/perf-pulse-1.5.3-darwin-x86_64.tar.gz"
    sha256 "bc696d895652e7a44ff3d0c1962740b0f9b055e1e5f3916fc1c7bca86567c4b3"
  end

  def install
    bin.install "perf-pulse"
  end

  test do
    assert_match "perf-pulse", shell_output("#{bin}/perf-pulse --version")
  end
end
