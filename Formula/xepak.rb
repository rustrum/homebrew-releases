class Xepak < Formula
  desc "Declarative REST,RPC,MCP server builder. TOML-backed DSL with optional Lua scripting. SQLite-based."
  homepage "https://github.com/rustrum/xepak"
  version "0.0.10-rc"
  license any_of: ["MIT", :cannot_represent]

  on_macos do
    on_arm do
      url "https://github.com/rustrum/xepak/releases/download/v#{version}/xepak-aarch64-apple-darwin.tar.gz"
      sha256 "7a02825e631714ea4d9716b21aad0d5e78959ae995bdbd5b32e9daa610c5b6a5"
    end

    on_intel do
      odie "Xepak does not provide an Intel macOS build"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/rustrum/xepak/releases/download/v#{version}/xepak-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "f0da9e7470407ecb7314fb18f790d04d305ce8d5d46d1552e0134ce8831f0639"
    end

    on_arm do
      url "https://github.com/rustrum/xepak/releases/download/v#{version}/xepak-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "0e5bfaf89b0af7449df69b27908385e3849cccb1356ade0124c7535f66703816"
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
