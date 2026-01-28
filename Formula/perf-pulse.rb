class PerfPulse < Formula
  desc "The Activity Monitor replacement for developers"
  homepage "https://perfpulse.dev"
  version "1.2.0"
  license "MIT"

  if Hardware::CPU.arm?
    url "https://github.com/hopeatina/perf-pulse/releases/download/v1.2.0/perf-pulse-1.2.0-darwin-arm64.tar.gz"
    sha256 "08407c8d67a88509c887ca3d6c7ffc34ec4ebb430a044cef7966db306b8c493d"
  else
    url "https://github.com/hopeatina/perf-pulse/releases/download/v1.2.0/perf-pulse-1.2.0-darwin-x86_64.tar.gz"
    sha256 "3942dceeae633b7b09fc16a8b61338a037a9cb736094baaa1740f83f9dafd723"
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
