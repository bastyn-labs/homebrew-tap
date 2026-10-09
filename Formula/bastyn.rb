class Bastyn < Formula
  desc "Single-binary static analysis for AI and agent code"
  homepage "https://bastyn.ai"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/BASTYN-labs/bastyn-scan/releases/download/v0.3.0/bastyn-v0.3.0-aarch64-apple-darwin.tar.gz"
      sha256 "ce8b3264e30e61ca808e7701ac2b3872456496799db9925a7ab6e045e14a91d7"
    end
    on_intel do
      url "https://github.com/BASTYN-labs/bastyn-scan/releases/download/v0.3.0/bastyn-v0.3.0-x86_64-apple-darwin.tar.gz"
      sha256 "53777da4659a9db3d6e4db5ce50ba1d296cfc64f0cff460dc42dfd3b756d3c36"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/BASTYN-labs/bastyn-scan/releases/download/v0.3.0/bastyn-v0.3.0-aarch64-unknown-linux-musl.tar.gz"
      sha256 "3165e03d966b50dc19db155847701144b261820850f3366e367c8d120e8bd4c8"
    end
    on_intel do
      url "https://github.com/BASTYN-labs/bastyn-scan/releases/download/v0.3.0/bastyn-v0.3.0-x86_64-unknown-linux-musl.tar.gz"
      sha256 "134c600b1f43d8041779f662a5614370f51247d702b6f8bb93d5f389a5d1b84b"
    end
  end

  def install
    bin.install "bastyn"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/bastyn --version")
  end
end
