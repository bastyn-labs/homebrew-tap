class Bastyn < Formula
  desc "Single-binary static analysis for AI and agent code"
  homepage "https://bastyn.ai"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/BASTYN-labs/bastyn-scan/releases/download/v0.2.1/bastyn-v0.2.1-aarch64-apple-darwin.tar.gz"
      sha256 "43e2a68efa6fcef6e692146225b18c671734f867127761154aecce55e2a978ea"
    end
    on_intel do
      url "https://github.com/BASTYN-labs/bastyn-scan/releases/download/v0.2.1/bastyn-v0.2.1-x86_64-apple-darwin.tar.gz"
      sha256 "2d93b8a772abc6e48cba56c77b75e3738a0610a8c0e1801c305b7985279634d7"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/BASTYN-labs/bastyn-scan/releases/download/v0.2.1/bastyn-v0.2.1-aarch64-unknown-linux-musl.tar.gz"
      sha256 "cc6899325d6277b8167c4657b6ab4ad91619be9a97056f45bd2174bc8625201c"
    end
    on_intel do
      url "https://github.com/BASTYN-labs/bastyn-scan/releases/download/v0.2.1/bastyn-v0.2.1-x86_64-unknown-linux-musl.tar.gz"
      sha256 "0b5b3a2e438e1f0f1a34667342ea5506bb7cc10127eabdd289b5595917d13796"
    end
  end

  def install
    bin.install "bastyn"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/bastyn --version")
  end
end
