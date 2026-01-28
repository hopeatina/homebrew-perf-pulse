class PerfPulse < Formula
  desc "The Activity Monitor replacement for developers"
  homepage "https://perf-pulse.com"
  version "1.3.1"
  license "MIT"

  if Hardware::CPU.arm?
    url "https://github.com/hopeatina/perf-pulse/releases/download/v1.3.1/perf-pulse-1.3.1-darwin-arm64.tar.gz"
    sha256 "ab49f37f9298d4557e987d04a705acb26d247d7c17e33645d8f8d3f185b97fa1"
  else
    url "https://github.com/hopeatina/perf-pulse/releases/download/v1.3.1/perf-pulse-1.3.1-darwin-x86_64.tar.gz"
    sha256 "5772dea0c89590e8d2a15d7e385ebf56520cbab99b08b2bcf48a4acdd07ef862"
  end

  livecheck do
    url :stable
    strategy :github_latest
  end

  def install
    bin.install "perf-pulse"
  end

  test do
    assert_match "perf-pulse", shell_output("#{bin}/perf-pulse --version")
  end
end
