class PerfPulse < Formula
  desc "The Activity Monitor replacement for developers"
  homepage "https://perf-pulse.com"
  version "1.4.1"
  license "MIT"

  if Hardware::CPU.arm?
    url "https://perf-pulse.com/releases/v1.4.1/perf-pulse-1.4.1-darwin-arm64.tar.gz"
    sha256 "b46ef7547b2892410ba5f41a5b28389231868f5dc0a0d11b5a3c6cf635f06cf5"
  else
    url "https://perf-pulse.com/releases/v1.4.1/perf-pulse-1.4.1-darwin-x86_64.tar.gz"
    sha256 "e2d363e3878e6e0dd072596eb8be13b1073ded24cc38aeec89cc2d0bb566d87f"
  end

  def install
    bin.install "perf-pulse"
  end

  test do
    assert_match "perf-pulse", shell_output("#{bin}/perf-pulse --version")
  end
end
