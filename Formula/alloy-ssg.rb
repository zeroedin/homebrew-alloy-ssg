class AlloySsg < Formula
  desc "Fast, extensible static site generator built in Go"
  homepage "https://github.com/zeroedin/alloy"
  license :mit
  version "0.9.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/zeroedin/alloy/releases/download/v#{version}/alloy-darwin-arm64.tar.gz"
      sha256 "474af787975367227de3edbe96385d3626dd8b9f30b727512bd953ba84237bdd"

      def install
        bin.install "alloy-darwin-arm64" => "alloy"
      end
    else
      url "https://github.com/zeroedin/alloy/releases/download/v#{version}/alloy-darwin-amd64.tar.gz"
      sha256 "4078b321c0220e0997d073d23d132f8bd2a718f61ba7ad0b70ea5317347d6815"

      def install
        bin.install "alloy-darwin-amd64" => "alloy"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/zeroedin/alloy/releases/download/v#{version}/alloy-linux-arm64.tar.gz"
      sha256 "a2dbd2837a43931aa18db30f76defffeb643dfe218c4a15a9a542554973c0b9b"

      def install
        bin.install "alloy-linux-arm64" => "alloy"
      end
    else
      url "https://github.com/zeroedin/alloy/releases/download/v#{version}/alloy-linux-amd64.tar.gz"
      sha256 "58f9ac2a163cd1b758e1793730664e2078e689317219afc820dc2a1a280baafd"

      def install
        bin.install "alloy-linux-amd64" => "alloy"
      end
    end
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/alloy version")
  end
end
