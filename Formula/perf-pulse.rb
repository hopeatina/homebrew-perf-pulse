class PerfPulse < Formula
  desc "The Activity Monitor replacement for developers"
  homepage "https://perfpulse.dev"
  version "1.0.0"
  license "MIT"

  if Hardware::CPU.arm?
    url "https://github.com/hopeatina/perf-pulse/releases/download/v1.0.0/perf-pulse-1.0.0-darwin-arm64.tar.gz"
    sha256 "05258e75d2d6611b2b362472be37e546ceb2d30327b5952708d22c13a381ff50"
  else
    url "https://github.com/hopeatina/perf-pulse/releases/download/v1.0.0/perf-pulse-1.0.0-darwin-x86_64.tar.gz"
    sha256 "22043356b1221744a9ee32702b29f04e1876328be1d92038568ef85599c204b6"
  end

  def install
    bin.install "perf-pulse"
  end

  test do
    assert_match "perf-pulse", shell_output("#{bin}/perf-pulse --version")
  end
end
