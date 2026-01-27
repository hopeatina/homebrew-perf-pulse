class PerfPulse < Formula
  desc "The Activity Monitor replacement for developers"
  homepage "https://perfpulse.dev"
  version "1.0.0"
  license "MIT"

  if Hardware::CPU.arm?
    url "https://github.com/hopeatina/perf-pulse/releases/download/v1.0.0/perf-pulse-1.0.0-darwin-arm64.tar.gz"
    sha256 "6585ddac53a226dd8a93c973dfd2c5d3640d6fbbb9327149da35313fe8d75095"
  else
    url "https://github.com/hopeatina/perf-pulse/releases/download/v1.0.0/perf-pulse-1.0.0-darwin-x86_64.tar.gz"
    sha256 "9a147945780c41630fecdbc4165490a6ee033721377e6c7ff97edca9bf534feb"
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
