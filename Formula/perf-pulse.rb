class PerfPulse < Formula
  desc "The Activity Monitor replacement for developers"
  homepage "https://perf-pulse.com"
  version "1.4.3"
  license "MIT"

  if Hardware::CPU.arm?
    url "https://perf-pulse.com/releases/v1.4.3/perf-pulse-1.4.3-darwin-arm64.tar.gz"
    sha256 "f6e5b36e5b9aada30398943303fec4d89f7e3553f637b5220f6f2162f05ef522"
  else
    url "https://perf-pulse.com/releases/v1.4.3/perf-pulse-1.4.3-darwin-x86_64.tar.gz"
    sha256 "c4957464e974c094fc79cd55ed2f9afffb4cd780a318c5cc8f0e26fffc1fdebf"
  end

  def install
    bin.install "perf-pulse"
  end

  test do
    assert_match "perf-pulse", shell_output("#{bin}/perf-pulse --version")
  end
end
