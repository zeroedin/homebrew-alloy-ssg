class AlloySsg < Formula
  desc "Fast, extensible static site generator built in Go"
  homepage "https://github.com/zeroedin/alloy"
  license :mit
  version "0.1.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/zeroedin/alloy/releases/download/v#{version}/alloy-darwin-arm64.tar.gz"
      sha256 "PLACEHOLDER"

      def install
        bin.install "alloy-darwin-arm64" => "alloy"
      end
    else
      url "https://github.com/zeroedin/alloy/releases/download/v#{version}/alloy-darwin-amd64.tar.gz"
      sha256 "PLACEHOLDER"

      def install
        bin.install "alloy-darwin-amd64" => "alloy"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/zeroedin/alloy/releases/download/v#{version}/alloy-linux-arm64.tar.gz"
      sha256 "PLACEHOLDER"

      def install
        bin.install "alloy-linux-arm64" => "alloy"
      end
    else
      url "https://github.com/zeroedin/alloy/releases/download/v#{version}/alloy-linux-amd64.tar.gz"
      sha256 "PLACEHOLDER"

      def install
        bin.install "alloy-linux-amd64" => "alloy"
      end
    end
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/alloy version")
  end
end
