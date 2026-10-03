class Bastyn < Formula
  desc "Single-binary static analysis for AI and agent code"
  homepage "https://bastyn.ai"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/BASTYN-labs/bastyn-scan/releases/download/v0.2.2/bastyn-v0.2.2-aarch64-apple-darwin.tar.gz"
      sha256 "7834aabf1267fc6c69abd45c945a50626ef5b05ae1bf428f7f5db9f4b2618d32"
    end
    on_intel do
      url "https://github.com/BASTYN-labs/bastyn-scan/releases/download/v0.2.2/bastyn-v0.2.2-x86_64-apple-darwin.tar.gz"
      sha256 "b8e3403ba773ce08910f7c1741c5df3a4cf34dc40451e639ad37f7b34aa81db0"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/BASTYN-labs/bastyn-scan/releases/download/v0.2.2/bastyn-v0.2.2-aarch64-unknown-linux-musl.tar.gz"
      sha256 "3016b58fd0847e0b72c6e26322ddb35ab17dc0fd3bc09f57abcea62ac34a4bab"
    end
    on_intel do
      url "https://github.com/BASTYN-labs/bastyn-scan/releases/download/v0.2.2/bastyn-v0.2.2-x86_64-unknown-linux-musl.tar.gz"
      sha256 "79d794017b44c9337e0cbdaf27d61148f7caa1940b85ae4187a9371bcc04f5c8"
    end
  end

  def install
    bin.install "bastyn"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/bastyn --version")
  end
end
