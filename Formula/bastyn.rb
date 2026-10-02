class Bastyn < Formula
  desc "Single-binary static analysis for AI and agent code"
  homepage "https://bastyn.ai"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/BASTYN-labs/bastyn-scan/releases/download/v0.2.0/bastyn-v0.2.0-aarch64-apple-darwin.tar.gz"
      sha256 "00e02bf1db33498c7962f2884ba7a0e2cc3d1513896e3ab77d0f195fbc63f228"
    end
    on_intel do
      url "https://github.com/BASTYN-labs/bastyn-scan/releases/download/v0.2.0/bastyn-v0.2.0-x86_64-apple-darwin.tar.gz"
      sha256 "c74d6c7f3c202053f45e350b60c151dbf6adbc3e0bcd374bb15aa9068349f129"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/BASTYN-labs/bastyn-scan/releases/download/v0.2.0/bastyn-v0.2.0-aarch64-unknown-linux-musl.tar.gz"
      sha256 "394fd5800a8859dfa7230c669debba18ff8ba2cc0a1102e6610b03bdf76afa2b"
    end
    on_intel do
      url "https://github.com/BASTYN-labs/bastyn-scan/releases/download/v0.2.0/bastyn-v0.2.0-x86_64-unknown-linux-musl.tar.gz"
      sha256 "78dd614bf46be839dea7c5127afa8e80f3500c74b7f02f7149b71184c5e9b617"
    end
  end

  def install
    bin.install "bastyn"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/bastyn --version")
  end
end
