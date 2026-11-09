class Bastyn < Formula
  desc "Single-binary static analysis for AI and agent code"
  homepage "https://bastyn.ai"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/BASTYN-labs/bastyn-scan/releases/download/v0.9.0/bastyn-v0.9.0-aarch64-apple-darwin.tar.gz"
      sha256 "8f6a5c13edd55cfef61e61b25f27e44acaf8c1f6ca97991574e2498c3f70c541"
    end
    on_intel do
      url "https://github.com/BASTYN-labs/bastyn-scan/releases/download/v0.9.0/bastyn-v0.9.0-x86_64-apple-darwin.tar.gz"
      sha256 "36ea72a975ef922cf7de0a4a64f17aa2f8626eec59b68647bb19686ec39427ed"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/BASTYN-labs/bastyn-scan/releases/download/v0.9.0/bastyn-v0.9.0-aarch64-unknown-linux-musl.tar.gz"
      sha256 "f44207c7c41c52b87ec3121cbb936d984ff244639a84f7b07bce906d54c50c7b"
    end
    on_intel do
      url "https://github.com/BASTYN-labs/bastyn-scan/releases/download/v0.9.0/bastyn-v0.9.0-x86_64-unknown-linux-musl.tar.gz"
      sha256 "902c1e08bbdd14e730ea7fd103c4f86da47975e5f259646a252fddc2bdabb302"
    end
  end

  def install
    bin.install "bastyn"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/bastyn --version")
  end
end
