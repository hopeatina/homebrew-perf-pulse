class PerfPulse < Formula
  desc "The Activity Monitor replacement for developers"
  homepage "https://perfpulse.dev"
  version "1.1.0"
  license "MIT"

  if Hardware::CPU.arm?
    url "https://github.com/hopeatina/perf-pulse/releases/download/v1.1.0/perf-pulse-1.1.0-darwin-arm64.tar.gz"
    sha256 "c468dd79cb9b585be62ee57e095aa0525a4fc765033f89a83f839f2835dad7c8"
  else
    url "https://github.com/hopeatina/perf-pulse/releases/download/v1.1.0/perf-pulse-1.1.0-darwin-x86_64.tar.gz"
    sha256 "e9a29a95fed1254ab2e0aea270a840d4f9777d4a3d2866f39c8f3e9240b62d60"
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
