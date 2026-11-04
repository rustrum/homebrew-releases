class Apate < Formula
  desc "Declarative API mocking server"
  homepage "https://github.com/rustrum/apate"
  version "0.2.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/rustrum/apate/releases/download/v#{version}/apate-aarch64-apple-darwin.tar.gz"
      sha256 "ee8214abbe9d72698e1523053bdbb596b1e6cd6c8c3f071ce165c4d2462716e2"
    end

    on_intel do
      odie "Apate does not provide an Intel macOS build"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/rustrum/apate/releases/download/v#{version}/apate-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "dda8a099ddb42f879f85c52576bc79bc845d3d8a29df1948f267674b3e5518d5"
    end

    on_arm do
      url "https://github.com/rustrum/apate/releases/download/v#{version}/apate-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "c0fb14be71f36477594761f4b589d461e8b8c408c13c0a03040d6778017a5cc1"
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
