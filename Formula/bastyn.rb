class Bastyn < Formula
  desc "Single-binary static analysis for AI and agent code"
  homepage "https://bastyn.ai"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/BASTYN-labs/bastyn-scan/releases/download/v0.7.0/bastyn-v0.7.0-aarch64-apple-darwin.tar.gz"
      sha256 "dd17a573472d30909e7988d6007dd760f4971621f681e86c239230de6dd2095b"
    end
    on_intel do
      url "https://github.com/BASTYN-labs/bastyn-scan/releases/download/v0.7.0/bastyn-v0.7.0-x86_64-apple-darwin.tar.gz"
      sha256 "3d6ca079851bb1755c7e1d5299323ad2dd7e73d0247e07f48efd5c080d9353f5"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/BASTYN-labs/bastyn-scan/releases/download/v0.7.0/bastyn-v0.7.0-aarch64-unknown-linux-musl.tar.gz"
      sha256 "bf2dd892857a995f08656b16839e2db3bfefe4f83f91cea98a3fa5435fd7fe86"
    end
    on_intel do
      url "https://github.com/BASTYN-labs/bastyn-scan/releases/download/v0.7.0/bastyn-v0.7.0-x86_64-unknown-linux-musl.tar.gz"
      sha256 "231dae31fcdd4ea0bafc334a7eaff2a8f8eb79b56a5d87e30c205a770ff88ce8"
    end
  end

  def install
    bin.install "bastyn"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/bastyn --version")
  end
end
