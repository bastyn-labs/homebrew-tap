class Bastyn < Formula
  desc "Single-binary static analysis for AI and agent code"
  homepage "https://bastyn.ai"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/BASTYN-labs/bastyn-scan/releases/download/v0.4.0/bastyn-v0.4.0-aarch64-apple-darwin.tar.gz"
      sha256 "0e8b541eae2e806564ab197e5924f1e3e968849a7a199a70ace3c17f5e3d0ac8"
    end
    on_intel do
      url "https://github.com/BASTYN-labs/bastyn-scan/releases/download/v0.4.0/bastyn-v0.4.0-x86_64-apple-darwin.tar.gz"
      sha256 "b47a0c58019362fd40a9f9ef00a27502135c0ab76c79f197ce0bf16829f184e0"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/BASTYN-labs/bastyn-scan/releases/download/v0.4.0/bastyn-v0.4.0-aarch64-unknown-linux-musl.tar.gz"
      sha256 "e13c35ccda207fb09b4b47950370f45c7aedb3e515eb65648d4e828d6e29cd31"
    end
    on_intel do
      url "https://github.com/BASTYN-labs/bastyn-scan/releases/download/v0.4.0/bastyn-v0.4.0-x86_64-unknown-linux-musl.tar.gz"
      sha256 "7cd2f049633c6a2573a16326d1d4f9ae28d05964216372f9c00c273740be8562"
    end
  end

  def install
    bin.install "bastyn"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/bastyn --version")
  end
end
