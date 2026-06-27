class AlloySsg < Formula
  desc "Fast, extensible static site generator built in Go"
  homepage "https://github.com/zeroedin/alloy"
  license :mit
  version "0.3.1"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/zeroedin/alloy/releases/download/v#{version}/alloy-darwin-arm64.tar.gz"
      sha256 "1a23754fc47a9da4576d6a01045c1927d46ca2cfa439101f40bc5ef275dd0bfa"

      def install
        bin.install "alloy-darwin-arm64" => "alloy"
      end
    else
      url "https://github.com/zeroedin/alloy/releases/download/v#{version}/alloy-darwin-amd64.tar.gz"
      sha256 "eda02b2b9994b51dad3b8d37dc15a3c99242f7c7bb96ba76ca29d00f1ae1529c"

      def install
        bin.install "alloy-darwin-amd64" => "alloy"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/zeroedin/alloy/releases/download/v#{version}/alloy-linux-arm64.tar.gz"
      sha256 "83b616ff526592c8b9320a2c98a6a19c0fe211d53d326528346cf2cc6095ac5d"

      def install
        bin.install "alloy-linux-arm64" => "alloy"
      end
    else
      url "https://github.com/zeroedin/alloy/releases/download/v#{version}/alloy-linux-amd64.tar.gz"
      sha256 "0d3b9a96e56241a511b3c2c5038ad9ac43a6405fdba07d82b606f6d15587daa3"

      def install
        bin.install "alloy-linux-amd64" => "alloy"
      end
    end
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/alloy version")
  end
end
