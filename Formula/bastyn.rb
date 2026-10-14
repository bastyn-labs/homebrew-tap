class Bastyn < Formula
  desc "Single-binary static analysis for AI and agent code"
  homepage "https://bastyn.ai"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/BASTYN-labs/bastyn-scan/releases/download/v0.5.0/bastyn-v0.5.0-aarch64-apple-darwin.tar.gz"
      sha256 "d91bffb981fb1ba08c64b8461496679409e4818754b69ebfd5e9405fe5f98b9f"
    end
    on_intel do
      url "https://github.com/BASTYN-labs/bastyn-scan/releases/download/v0.5.0/bastyn-v0.5.0-x86_64-apple-darwin.tar.gz"
      sha256 "d9170c01b7774ee2ce31f114b6e198e303f076d16379d6db7840ee8f86392287"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/BASTYN-labs/bastyn-scan/releases/download/v0.5.0/bastyn-v0.5.0-aarch64-unknown-linux-musl.tar.gz"
      sha256 "aed85505bc2c3ada9f2d35af69d9dbc5c1ec8f338286e3ba0973e7dbc8cfa2d0"
    end
    on_intel do
      url "https://github.com/BASTYN-labs/bastyn-scan/releases/download/v0.5.0/bastyn-v0.5.0-x86_64-unknown-linux-musl.tar.gz"
      sha256 "c906af849e3dcf8b23259fb728bd04c0063824b50af7a094bfd127523e19a139"
    end
  end

  def install
    bin.install "bastyn"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/bastyn --version")
  end
end
