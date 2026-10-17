class Bastyn < Formula
  desc "Single-binary static analysis for AI and agent code"
  homepage "https://bastyn.ai"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/BASTYN-labs/bastyn-scan/releases/download/v0.8.0/bastyn-v0.8.0-aarch64-apple-darwin.tar.gz"
      sha256 "0790267db1691de210e64ba7404374b2efe2f81b715d3e545f367762c2555f3e"
    end
    on_intel do
      url "https://github.com/BASTYN-labs/bastyn-scan/releases/download/v0.8.0/bastyn-v0.8.0-x86_64-apple-darwin.tar.gz"
      sha256 "db3b9c0118636ab1feed007bdc907977e5a39c54bce08b1f66cec9953b9c87c7"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/BASTYN-labs/bastyn-scan/releases/download/v0.8.0/bastyn-v0.8.0-aarch64-unknown-linux-musl.tar.gz"
      sha256 "84e8efdb805da8fc2ae9374a06d9c364062b30dc682f6aaae9ba8a95d92d5529"
    end
    on_intel do
      url "https://github.com/BASTYN-labs/bastyn-scan/releases/download/v0.8.0/bastyn-v0.8.0-x86_64-unknown-linux-musl.tar.gz"
      sha256 "e85da59233f4cbee8ff0bbc3398152e6b378c2655802765e94077367c1632548"
    end
  end

  def install
    bin.install "bastyn"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/bastyn --version")
  end
end
