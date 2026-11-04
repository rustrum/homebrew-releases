class Xepak < Formula
  desc "Declarative REST,RPC,MCP server builder. TOML-backed DSL with optional Lua scripting. SQLite-based."
  homepage "https://github.com/rustrum/xepak"
  url "https://github.com/rustrum/xepak/releases/download/v0.0.10-rc/xepak-aarch64-apple-darwin.tar.gz"
  sha256 "7a02825e631714ea4d9716b21aad0d5e78959ae995bdbd5b32e9daa610c5b6a5"
  license "MIT"

  def install
    # Remove unrecognized options if they cause configure to fail
    # https://docs.brew.sh/rubydoc/Formula.html#std_configure_args-instance_method
    system "./configure", "--disable-silent-rules", *std_configure_args
    # system "cmake", "-S", ".", "-B", "build", *std_cmake_args
  end

  test do
    system "false"
  end
end
