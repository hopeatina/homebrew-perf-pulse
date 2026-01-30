class PerfPulse < Formula
  desc "The Activity Monitor replacement for developers"
  homepage "https://perf-pulse.com"
  version "1.5.0"
  license "MIT"

  if Hardware::CPU.arm?
    url "https://perf-pulse.com/releases/v1.5.0/perf-pulse-1.5.0-darwin-arm64.tar.gz"
    sha256 "c9121598c026ad76a49a5890fe2cbed37ac9550333a05669104e39e630bc2d5f"
  else
    url "https://perf-pulse.com/releases/v1.5.0/perf-pulse-1.5.0-darwin-x86_64.tar.gz"
    sha256 "12152c55ab98ea7e94fbfe86b77d0c7e413c7277bfbc7014decf435605caf5f4"
  end

  def install
    bin.install "perf-pulse"
  end

  test do
    assert_match "perf-pulse", shell_output("#{bin}/perf-pulse --version")
  end
end
