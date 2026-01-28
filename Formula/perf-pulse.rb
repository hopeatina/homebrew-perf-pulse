class PerfPulse < Formula
  desc "The Activity Monitor replacement for developers"
  homepage "https://perf-pulse.com"
  version "1.3.0"
  license "MIT"

  if Hardware::CPU.arm?
    url "https://github.com/hopeatina/perf-pulse/releases/download/v1.3.0/perf-pulse-1.3.0-darwin-arm64.tar.gz"
    sha256 "162ee2b721ba9b576f5913cb214a4eac99a31912b2612d1b50ef41f1c4a3ace2"
  else
    url "https://github.com/hopeatina/perf-pulse/releases/download/v1.3.0/perf-pulse-1.3.0-darwin-x86_64.tar.gz"
    sha256 "52fabc955e6e34ec669f883e51fe6ad82f09428be109696efe660efe54a7f8c6"
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
