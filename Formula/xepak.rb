class Xepak < Formula
  desc "Declarative REST,RPC,MCP server builder. TOML-backed DSL with optional Lua scripting. SQLite-based."
  homepage "https://github.com/rustrum/xepak"
  version "0.1.0"
  license any_of: ["MIT", :cannot_represent]

  on_macos do
    on_arm do
      url "https://github.com/rustrum/xepak/releases/download/v#{version}/xepak-aarch64-apple-darwin.tar.gz"
      sha256 "5d246c91d5713c8e208bf20b8613429eec627301c61c9f8271fae675b7e13897"
    end

    on_intel do
      odie "Xepak does not provide an Intel macOS build"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/rustrum/xepak/releases/download/v#{version}/xepak-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "0f991aff164fdfb693e41d95b4c26b9cb1c78d639757f922fa03aaa746ec2ade"
    end

    on_arm do
      url "https://github.com/rustrum/xepak/releases/download/v#{version}/xepak-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "f0d9939c8a7f5be73a6cb48b1f58a20657dcab6eef1331b7294caa9181b315a2"
    end
  end

  def install
    # archive contains only a single binary at the root:
    bin.install "xepak"
  end

  test do
    # todo: make version check later
    # assert_match version.to_s, shell_output("#{bin}/xepak --version")
    assert_predicate bin/"xepak", :executable?
  end
end
