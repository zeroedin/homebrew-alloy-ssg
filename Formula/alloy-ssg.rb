class AlloySsg < Formula
  desc "Fast, extensible static site generator built in Go"
  homepage "https://github.com/zeroedin/alloy"
  license :mit
  version "0.1.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/zeroedin/alloy/releases/download/v#{version}/alloy-darwin-arm64.tar.gz"
      sha256 "d01a0ff63c228f40272a901a3fe22e565fa709bf07ebe36d0b722fef372edd98"

      def install
        bin.install "alloy-darwin-arm64" => "alloy"
      end
    else
      url "https://github.com/zeroedin/alloy/releases/download/v#{version}/alloy-darwin-amd64.tar.gz"
      sha256 "5a79a16ba1a1a4314a646890b4adb7d9f4b25527aa23fbfa6e42b9c7770f4ccc"

      def install
        bin.install "alloy-darwin-amd64" => "alloy"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/zeroedin/alloy/releases/download/v#{version}/alloy-linux-arm64.tar.gz"
      sha256 "f7f61944254a58a9949fd0277a9d8b5f40c9476bd45277f96596f58676f33433"

      def install
        bin.install "alloy-linux-arm64" => "alloy"
      end
    else
      url "https://github.com/zeroedin/alloy/releases/download/v#{version}/alloy-linux-amd64.tar.gz"
      sha256 "6424d8130a6091076217fe596f60939c786332fc111508ff802c03d3049a964a"

      def install
        bin.install "alloy-linux-amd64" => "alloy"
      end
    end
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/alloy version")
  end
end
