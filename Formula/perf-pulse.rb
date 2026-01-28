class PerfPulse < Formula
  desc "The Activity Monitor replacement for developers"
  homepage "https://perf-pulse.com"
  version "1.3.2"
  license "MIT"

  if Hardware::CPU.arm?
    url "https://perf-pulse.com/releases/v1.3.2/perf-pulse-1.3.2-darwin-arm64.tar.gz"
    sha256 "2be944f93fdba9a1c4288b47ccf28de3e86040ed09079da6b6de4273e2d0d592"
  else
    url "https://perf-pulse.com/releases/v1.3.2/perf-pulse-1.3.2-darwin-x86_64.tar.gz"
    sha256 "53c605a68bdeb2bf55ee9f3245e822a261591e0c69bdd9763286d9ac87963d39"
  end

  def install
    bin.install "perf-pulse"
  end

  test do
    assert_match "perf-pulse", shell_output("#{bin}/perf-pulse --version")
  end
end
