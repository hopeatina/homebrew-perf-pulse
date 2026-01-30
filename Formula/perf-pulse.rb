class PerfPulse < Formula
  desc "The Activity Monitor replacement for developers"
  homepage "https://perf-pulse.com"
  version "1.5.4"
  license "MIT"

  if Hardware::CPU.arm?
    url "https://perf-pulse.com/releases/v1.5.4/perf-pulse-1.5.4-darwin-arm64.tar.gz"
    sha256 "1ab03142dd8a39acb17d3f76269bd398770bc35d26e91f7e232e91975313cad0"
  else
    url "https://perf-pulse.com/releases/v1.5.4/perf-pulse-1.5.4-darwin-x86_64.tar.gz"
    sha256 "6a8bbdb8a8bae34e4216872f9c9be4294320e01f1b66229999907eb0ab78b584"
  end

  def install
    bin.install "perf-pulse"
  end

  test do
    assert_match "perf-pulse", shell_output("#{bin}/perf-pulse --version")
  end
end
