class Bastyn < Formula
  desc "Single-binary static analysis for AI and agent code"
  homepage "https://bastyn.ai"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/BASTYN-labs/bastyn-scan/releases/download/v0.6.0/bastyn-v0.6.0-aarch64-apple-darwin.tar.gz"
      sha256 "e1e7e435dced11bf1fa413350233137ecbe15d2079e57ad6508315bf8afde7db"
    end
    on_intel do
      url "https://github.com/BASTYN-labs/bastyn-scan/releases/download/v0.6.0/bastyn-v0.6.0-x86_64-apple-darwin.tar.gz"
      sha256 "72823e83a5cfc3f94bac7dfe49235a5270df5bbe31915dc6bc66e0b359f2586a"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/BASTYN-labs/bastyn-scan/releases/download/v0.6.0/bastyn-v0.6.0-aarch64-unknown-linux-musl.tar.gz"
      sha256 "d4dfd0964196c4ba86e4fabfaaac15bcaf90b7f414cf714d8e91b3f2114448f6"
    end
    on_intel do
      url "https://github.com/BASTYN-labs/bastyn-scan/releases/download/v0.6.0/bastyn-v0.6.0-x86_64-unknown-linux-musl.tar.gz"
      sha256 "eb18c761950994bece40221118569fe94dce181b1253128db9646a2728f35606"
    end
  end

  def install
    bin.install "bastyn"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/bastyn --version")
  end
end
