class Bastyn < Formula
  desc "Single-binary static analysis for AI and agent code"
  homepage "https://bastyn.ai"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/BASTYN-labs/bastyn-scan/releases/download/v0.1.8/bastyn-v0.1.8-aarch64-apple-darwin.tar.gz"
      sha256 "3f2097e3df334b8fb598d51a7266ad15917f84c3f36f1bcc7d7c4fafd9dfbd8a"
    end
    on_intel do
      url "https://github.com/BASTYN-labs/bastyn-scan/releases/download/v0.1.8/bastyn-v0.1.8-x86_64-apple-darwin.tar.gz"
      sha256 "accca0c180bb6702ec3180b49aad1e0a4201d89068cedfb8b44e0ffd38861e14"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/BASTYN-labs/bastyn-scan/releases/download/v0.1.8/bastyn-v0.1.8-aarch64-unknown-linux-musl.tar.gz"
      sha256 "727b3bd6dab61966c3c8b4e75790af44ec09668c8eaf332367a1111b7de7d1f6"
    end
    on_intel do
      url "https://github.com/BASTYN-labs/bastyn-scan/releases/download/v0.1.8/bastyn-v0.1.8-x86_64-unknown-linux-musl.tar.gz"
      sha256 "4af13269ec71fef0b5ec32c27529fe3706992910bf1fa18cd9b8d753062da2a0"
    end
  end

  def install
    bin.install "bastyn"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/bastyn --version")
  end
end
