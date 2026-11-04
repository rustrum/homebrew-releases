class Apate < Formula
  desc "Declarative API mocking server"
  homepage "https://github.com/rustrum/apate"
  version "0.3.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/rustrum/apate/releases/download/v#{version}/apate-aarch64-apple-darwin.tar.gz"
      sha256 "c82abde7566e11d3954963153f5d47ec5f422a9968dd18c68b71e7c4c3215c2a"
    end

    on_intel do
      odie "Apate does not provide an Intel macOS build"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/rustrum/apate/releases/download/v#{version}/apate-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "004dd53562616e6a98888aed0023bdac5773484c35901ac9cf91d2db0923377e"
    end

    on_arm do
      url "https://github.com/rustrum/apate/releases/download/v#{version}/apate-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "383c01350286d8b5d5ab04cc9bb2c2655ec602d37c7dd224467d5d7950b2f64d"
    end
  end

  def install
    # archive contains only a single binary at the root:
    bin.install "apate"
  end

  test do
    # todo: make version check later
    # assert_match version.to_s, shell_output("#{bin}/apate --version")
    assert_predicate bin/"apate", :executable?
  end
end
