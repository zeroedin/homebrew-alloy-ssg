class AlloySsg < Formula
  desc "Fast, extensible static site generator built in Go"
  homepage "https://github.com/zeroedin/alloy"
  license :mit
  version "0.3.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/zeroedin/alloy/releases/download/v#{version}/alloy-darwin-arm64.tar.gz"
      sha256 "33000f40982ef05d7aa1fb7a3901946cc84f915a75b8659c38202c2e12349be2"

      def install
        bin.install "alloy-darwin-arm64" => "alloy"
      end
    else
      url "https://github.com/zeroedin/alloy/releases/download/v#{version}/alloy-darwin-amd64.tar.gz"
      sha256 "41b4aadebaff7f5d9e013db263e6e6ccfb3a4876f8b0dc6284740ae05362144a"

      def install
        bin.install "alloy-darwin-amd64" => "alloy"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/zeroedin/alloy/releases/download/v#{version}/alloy-linux-arm64.tar.gz"
      sha256 "5322380377e31f36985446d56d7eb10f9aee62287fa7c404219e4841fe930701"

      def install
        bin.install "alloy-linux-arm64" => "alloy"
      end
    else
      url "https://github.com/zeroedin/alloy/releases/download/v#{version}/alloy-linux-amd64.tar.gz"
      sha256 "cb043bc324fdfc87a9284adb71e9a5eebce0302066c9fcf64d0ad649499b43f1"

      def install
        bin.install "alloy-linux-amd64" => "alloy"
      end
    end
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/alloy version")
  end
end
